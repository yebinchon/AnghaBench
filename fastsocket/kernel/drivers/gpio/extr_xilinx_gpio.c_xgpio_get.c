
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_mm_gpio_chip {scalar_t__ regs; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ XGPIO_DATA_OFFSET ;
 unsigned int in_be32 (scalar_t__) ;
 struct of_mm_gpio_chip* to_of_mm_gpio_chip (struct gpio_chip*) ;

__attribute__((used)) static int xgpio_get(struct gpio_chip *gc, unsigned int gpio)
{
 struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);

 return (in_be32(mm_gc->regs + XGPIO_DATA_OFFSET) >> gpio) & 1;
}
