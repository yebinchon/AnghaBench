
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int EINVAL ;
 unsigned int TWL4030_GPIO_MAX ;
 int twl4030_set_gpio_direction (unsigned int,int) ;

__attribute__((used)) static int twl_direction_in(struct gpio_chip *chip, unsigned offset)
{
 return (offset < TWL4030_GPIO_MAX)
  ? twl4030_set_gpio_direction(offset, 1)
  : -EINVAL;
}
