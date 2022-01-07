
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct egpio_info {int irqs_enabled; unsigned int irq_start; } ;


 struct egpio_info* get_irq_chip_data (unsigned int) ;
 int pr_debug (char*,unsigned int,int) ;

__attribute__((used)) static void egpio_unmask(unsigned int irq)
{
 struct egpio_info *ei = get_irq_chip_data(irq);
 ei->irqs_enabled |= 1 << (irq - ei->irq_start);
 pr_debug("EGPIO unmask %d %04x\n", irq, ei->irqs_enabled);
}
