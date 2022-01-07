
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GPIO_BASE (unsigned int) ;
 int _set_gpio_irqenable (unsigned int,unsigned int,int ) ;
 unsigned int irq_to_gpio (unsigned int) ;

__attribute__((used)) static void gpio_mask_irq(unsigned int irq)
{
 unsigned int gpio = irq_to_gpio(irq);
 unsigned int base = GPIO_BASE(gpio / 32);

 _set_gpio_irqenable(base, gpio % 32, 0);
}
