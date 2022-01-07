
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_IDX (unsigned int) ;
 int scc_mask ;

__attribute__((used)) static void scc_irq_disable(unsigned int irq)
{
 int irq_idx = IRQ_IDX(irq);

 scc_mask &= ~(1 << irq_idx);
}
