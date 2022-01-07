
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 unsigned int GPIO_BASE (unsigned int) ;
 scalar_t__ GPIO_DATA_CLR ;
 scalar_t__ GPIO_DATA_SET ;
 int __raw_writel (int,scalar_t__) ;

__attribute__((used)) static void gemini_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 unsigned int base = GPIO_BASE(offset / 32);

 if (value)
  __raw_writel(1 << (offset % 32), base + GPIO_DATA_SET);
 else
  __raw_writel(1 << (offset % 32), base + GPIO_DATA_CLR);
}
