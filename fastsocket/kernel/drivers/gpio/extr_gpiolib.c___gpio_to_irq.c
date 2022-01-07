
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int (* to_irq ) (struct gpio_chip*,unsigned int) ;unsigned int base; } ;


 int ENXIO ;
 struct gpio_chip* gpio_to_chip (unsigned int) ;
 int stub1 (struct gpio_chip*,unsigned int) ;

int __gpio_to_irq(unsigned gpio)
{
 struct gpio_chip *chip;

 chip = gpio_to_chip(gpio);
 return chip->to_irq ? chip->to_irq(chip, gpio - chip->base) : -ENXIO;
}
