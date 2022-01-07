
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_mm_gpio_chip {scalar_t__ regs; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ GPIO_DAT ;
 int in_be32 (scalar_t__) ;
 int mpc8xxx_gpio2mask (unsigned int) ;
 struct of_mm_gpio_chip* to_of_mm_gpio_chip (struct gpio_chip*) ;

__attribute__((used)) static int mpc8xxx_gpio_get(struct gpio_chip *gc, unsigned int gpio)
{
 struct of_mm_gpio_chip *mm = to_of_mm_gpio_chip(gc);

 return in_be32(mm->regs + GPIO_DAT) & mpc8xxx_gpio2mask(gpio);
}
