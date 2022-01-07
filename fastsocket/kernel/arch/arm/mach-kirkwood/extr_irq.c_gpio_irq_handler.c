
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int BUG_ON (int) ;
 unsigned int IRQ_KIRKWOOD_GPIO_HIGH_16_23 ;
 unsigned int IRQ_KIRKWOOD_GPIO_LOW_0_7 ;
 int orion_gpio_irq_handler (unsigned int) ;

__attribute__((used)) static void gpio_irq_handler(unsigned int irq, struct irq_desc *desc)
{
 BUG_ON(irq < IRQ_KIRKWOOD_GPIO_LOW_0_7);
 BUG_ON(irq > IRQ_KIRKWOOD_GPIO_HIGH_16_23);

 orion_gpio_irq_handler((irq - IRQ_KIRKWOOD_GPIO_LOW_0_7) << 3);
}
