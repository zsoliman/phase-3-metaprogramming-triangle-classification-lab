class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle

    if a == b && b == c
      :equilateral
    elsif 
      a == b || b == c || c == a
      :isosceles
    else
       :scalene
    end
  end

  def side_greater_than_zero?
      a.positive? && b.positive? && c.positive?
  end

  def validate_triangle_inequality?
      a + b > c && a + c > b && b + c > a
  end

  def validate_triangle
      raise TriangleError unless side_greater_than_zero? && validate_triangle_inequality?
  end

  class TriangleError < StandardError
  end

end
