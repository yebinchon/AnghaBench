
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 unsigned int TWL4030_GPIO_MAX ;
 int twl4030_led_set_value (unsigned int,int) ;
 int twl4030_set_gpio_dataout (unsigned int,int) ;

__attribute__((used)) static void twl_set(struct gpio_chip *chip, unsigned offset, int value)
{
 if (offset < TWL4030_GPIO_MAX)
  twl4030_set_gpio_dataout(offset, value);
 else
  twl4030_led_set_value(offset - TWL4030_GPIO_MAX, value);
}
