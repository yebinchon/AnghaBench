
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int can_sleep; } ;


 struct gpio_chip* gpio_to_chip (unsigned int) ;

int __gpio_cansleep(unsigned gpio)
{
 struct gpio_chip *chip;


 chip = gpio_to_chip(gpio);

 return chip->can_sleep;
}
