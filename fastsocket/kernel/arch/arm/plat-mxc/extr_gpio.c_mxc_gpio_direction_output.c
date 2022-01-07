
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int _set_gpio_direction (struct gpio_chip*,unsigned int,int) ;
 int mxc_gpio_set (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int mxc_gpio_direction_output(struct gpio_chip *chip,
         unsigned offset, int value)
{
 mxc_gpio_set(chip, offset, value);
 _set_gpio_direction(chip, offset, 1);
 return 0;
}
