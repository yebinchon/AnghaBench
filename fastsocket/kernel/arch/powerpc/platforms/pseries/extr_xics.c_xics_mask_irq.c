
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hwirq; } ;


 unsigned int XICS_IPI ;
 unsigned int XICS_IRQ_SPURIOUS ;
 TYPE_1__* irq_map ;
 int pr_devel (char*,unsigned int) ;
 int xics_mask_real_irq (unsigned int) ;

__attribute__((used)) static void xics_mask_irq(unsigned int virq)
{
 unsigned int irq;

 pr_devel("xics: mask virq %d\n", virq);

 irq = (unsigned int)irq_map[virq].hwirq;
 if (irq == XICS_IPI || irq == XICS_IRQ_SPURIOUS)
  return;
 xics_mask_real_irq(irq);
}
