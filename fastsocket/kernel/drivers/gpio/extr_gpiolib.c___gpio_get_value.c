
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int (* get ) (struct gpio_chip*,unsigned int) ;unsigned int base; scalar_t__ can_sleep; } ;


 int WARN_ON (int) ;
 scalar_t__ extra_checks ;
 struct gpio_chip* gpio_to_chip (unsigned int) ;
 int stub1 (struct gpio_chip*,unsigned int) ;

int __gpio_get_value(unsigned gpio)
{
 struct gpio_chip *chip;

 chip = gpio_to_chip(gpio);
 WARN_ON(extra_checks && chip->can_sleep);
 return chip->get ? chip->get(chip, gpio - chip->base) : 0;
}
