# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def test_push_and_pop
    @stack.push!(1)
    @stack.push!(2)
    assert { @stack.pop! == 2 }
    assert { @stack.pop! == 1 }
  end

  def test_empty_stack
    assert { @stack.empty? == true }
    @stack.push!(1)
    assert { @stack.empty? == false }
  end

  def test_clear
    @stack.push!(1)
    @stack.push!(2)
    @stack.clear!
    assert { @stack.empty? == true }
  end

  def test_size
    @stack.push!(1)
    @stack.push!(2)
    assert { @stack.size == 2 }
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
