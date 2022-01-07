
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int status; } ;


 int IRQ_DISABLED ;
 unsigned int OCTEON_IRQ_SW0 ;
 struct irq_desc* irq_desc ;
 int set_c0_status (int) ;

__attribute__((used)) static void octeon_irq_core_eoi(unsigned int irq)
{
 struct irq_desc *desc = irq_desc + irq;
 unsigned int bit = irq - OCTEON_IRQ_SW0;





 if (desc->status & IRQ_DISABLED)
  return;
 set_c0_status(0x100 << bit);
}
