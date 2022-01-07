
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int (* get ) (struct gpio_chip*,unsigned int) ;unsigned int base; } ;


 int extra_checks ;
 struct gpio_chip* gpio_to_chip (unsigned int) ;
 int might_sleep_if (int ) ;
 int stub1 (struct gpio_chip*,unsigned int) ;

int gpio_get_value_cansleep(unsigned gpio)
{
 struct gpio_chip *chip;

 might_sleep_if(extra_checks);
 chip = gpio_to_chip(gpio);
 return chip->get ? chip->get(chip, gpio - chip->base) : 0;
}
