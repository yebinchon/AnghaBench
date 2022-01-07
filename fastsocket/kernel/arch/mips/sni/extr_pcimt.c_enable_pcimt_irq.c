
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 scalar_t__ PCIMT_IRQSEL ;
 unsigned int PCIMT_IRQ_INT2 ;

__attribute__((used)) static void enable_pcimt_irq(unsigned int irq)
{
 unsigned int mask = 1 << (irq - PCIMT_IRQ_INT2);

 *(volatile u8 *) PCIMT_IRQSEL |= mask;
}
