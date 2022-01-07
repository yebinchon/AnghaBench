
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int EINVAL ;
 int IRQ_BASE ;

__attribute__((used)) static int to_irq(struct gpio_chip *chip, unsigned offset)
{
 if (offset < 8)
  return offset + IRQ_BASE;
 return -EINVAL;
}
