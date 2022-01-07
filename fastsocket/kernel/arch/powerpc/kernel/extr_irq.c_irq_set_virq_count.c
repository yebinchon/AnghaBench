
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned int NR_IRQS ;
 unsigned int NUM_ISA_INTERRUPTS ;
 unsigned int irq_virq_count ;
 int pr_debug (char*,unsigned int) ;

void irq_set_virq_count(unsigned int count)
{
 pr_debug("irq: Trying to set virq count to %d\n", count);

 BUG_ON(count < NUM_ISA_INTERRUPTS);
 if (count < NR_IRQS)
  irq_virq_count = count;
}
