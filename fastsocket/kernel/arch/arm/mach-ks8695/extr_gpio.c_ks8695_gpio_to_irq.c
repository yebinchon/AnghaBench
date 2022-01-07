
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int EINVAL ;
 unsigned int KS8695_GPIO_3 ;
 int* gpio_irq ;

__attribute__((used)) static int ks8695_gpio_to_irq(struct gpio_chip *gc, unsigned int pin)
{
 if (pin > KS8695_GPIO_3)
  return -EINVAL;

 return gpio_irq[pin];
}
