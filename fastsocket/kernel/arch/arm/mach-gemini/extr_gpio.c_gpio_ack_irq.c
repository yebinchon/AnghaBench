
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GPIO_BASE (unsigned int) ;
 scalar_t__ GPIO_INT_CLR ;
 int __raw_writel (int,scalar_t__) ;
 unsigned int irq_to_gpio (unsigned int) ;

__attribute__((used)) static void gpio_ack_irq(unsigned int irq)
{
 unsigned int gpio = irq_to_gpio(irq);
 unsigned int base = GPIO_BASE(gpio / 32);

 __raw_writel(1 << (gpio % 32), base + GPIO_INT_CLR);
}
