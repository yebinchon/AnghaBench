
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int base; int (* set ) (struct gpio_chip*,unsigned int,int) ;scalar_t__ can_sleep; } ;


 int WARN_ON (int) ;
 scalar_t__ extra_checks ;
 struct gpio_chip* gpio_to_chip (unsigned int) ;
 int stub1 (struct gpio_chip*,unsigned int,int) ;

void __gpio_set_value(unsigned gpio, int value)
{
 struct gpio_chip *chip;

 chip = gpio_to_chip(gpio);
 WARN_ON(extra_checks && chip->can_sleep);
 chip->set(chip, gpio - chip->base, value);
}
