
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 unsigned int GPIO_BASE (unsigned int) ;
 scalar_t__ GPIO_DATA_IN ;
 unsigned int __raw_readl (scalar_t__) ;

__attribute__((used)) static int gemini_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 unsigned int base = GPIO_BASE(offset / 32);

 return (__raw_readl(base + GPIO_DATA_IN) >> (offset % 32)) & 1;
}
