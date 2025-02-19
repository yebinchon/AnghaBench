
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct ep93xx_gpio_chip {int data_reg; } ;


 int __raw_readb (int ) ;
 struct ep93xx_gpio_chip* to_ep93xx_gpio_chip (struct gpio_chip*) ;

__attribute__((used)) static int ep93xx_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct ep93xx_gpio_chip *ep93xx_chip = to_ep93xx_gpio_chip(chip);

 return !!(__raw_readb(ep93xx_chip->data_reg) & (1 << offset));
}
