
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int EINVAL ;
 unsigned int TWL4030_GPIO_MAX ;
 int twl4030_gpio_irq_base ;

__attribute__((used)) static int twl_to_irq(struct gpio_chip *chip, unsigned offset)
{
 return (twl4030_gpio_irq_base && (offset < TWL4030_GPIO_MAX))
  ? (twl4030_gpio_irq_base + offset)
  : -EINVAL;
}
