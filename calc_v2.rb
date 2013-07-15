#!/usr/bin/env ruby

# ask user for operator - Validate user response.
puts "Welcome to your calculator!"
puts "Press enter to continue."

while gets.chomp != 'q' do
  msg = "Please provide an arithmetic operator."
  puts msg
  op = gets.chomp

	while !['+', '-', '*', '/'].include?(op) do
    puts msg
    op = gets.chomp
  end

  # ask for two numbers
  puts "Please give me a number."
  num1 = gets.chomp
  puts "Please give me a second number."
  num2 = gets.chomp

  num1 = num1.to_f.to_s
  num2 = num2.to_f.to_s

  # do calculation and print result

  puts "The result is #{eval(num1 + op + num2)}." 	#Using string interpolation
  puts "Press enter to calculate more numbers, or 'q' to quit."
end

# continue until q

# ints to floats
# Validate inputs