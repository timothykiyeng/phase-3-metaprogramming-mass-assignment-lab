require "pry"
class Person
attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
:weight, :handed, :complexion, :t_shirt_size,
:wrist_size, :glove_size, :pant_length, :pant_width

def initialize(attributes)
  attributes.each do |key, value|
    self.class.attr_accessor(key)
    self.send("#{key}=", attributes[key])
    end
  end
end

# attributes = {name: "Susan", birthday: "Tuesday", hair_color:"Black", eye_color:"Blue", height: 1.79,
# weight: 25, handed: "Right", complexion: "dark", t_shirt_size: "X-L",
# wrist_size: "medium", glove_size: "medium", pant_length: 5, pant_width: 7}

# susan = Person.new(attributes)
# binding.pry
