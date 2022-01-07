
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int base; int (* set ) (struct gpio_chip*,unsigned int,int) ;} ;


 int extra_checks ;
 struct gpio_chip* gpio_to_chip (unsigned int) ;
 int might_sleep_if (int ) ;
 int stub1 (struct gpio_chip*,unsigned int,int) ;

void gpio_set_value_cansleep(unsigned gpio, int value)
{
 struct gpio_chip *chip;

 might_sleep_if(extra_checks);
 chip = gpio_to_chip(gpio);
 chip->set(chip, gpio - chip->base, value);
}
