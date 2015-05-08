# Write your answer bellow
#
# Happy coding!!

class Person
  # def initialize(first_name, last_name)
  #   @first_name = first_name
  #   @last_name = last_name
  #   @full_name = @first_name  + @first_name 
  # end  
  attr_accessor :first_name, :last_name, :full_name 
end

class Player < Person
  def initialize(health = 20, strength = 5, alive = true)
    @health = health
    @strength = strength 
    @alive = alive 
    if health == 0 
      @alive = false
    end 
  end  
  attr_accessor :health, :strength, :alive

  def take_damage(attack_strength)
    return @health -= attack_strength 
  end

  def attack(player)
    player.take_damage(@strength)
  end
end

class Knight < Player
  def initialize(health = 50, strength = 7)
    super
    @health = health
    @strength = strength 
  end 
end

class Wizard < Player
  def initialize(health = 20, strength = 75)
    super
    @health = health
    @strength = strength 
  end 
end

#========================================================================

green = Knight.new
green.first_name = "Garwain"
green.last_name = "Green"
green.full_name = "Garwain Green"
puts " green.Knight => health: #{green.health}, strength: #{green.strength}"
puts " green.Player => alive: #{green.alive} "
puts " green.Person => first_name: #{green.first_name}, last_name: #{green.last_name}, full_name: #{green.full_name}"

dumbledore = Wizard.new
dumbledore.first_name = "Albus"
dumbledore.last_name = "Dumbledore"
dumbledore.full_name = "Albus Dumbledore"

puts " dumbledore.Wizard => health:#{dumbledore.health}, strength: #{dumbledore.strength}"
puts " dumbledore.Player => alive: #{dumbledore.alive}"
puts " dumbledore.Person => first_name: #{dumbledore.first_name}, last_name:#{dumbledore.last_name}, full_name: #{dumbledore.full_name}"

puts "Dumbledore's health after being attacked by Green: #{green.attack(dumbledore)}"
puts "Green's health after after being attacked by Dumbledore: #{dumbledore.attack(green)}"
