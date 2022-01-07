
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qe_ic {int irqhost; int regs; } ;


 int BUG_ON (int ) ;
 unsigned int NO_IRQ ;
 int QEIC_CHIVEC ;
 unsigned int irq_linear_revmap (int ,int) ;
 int qe_ic_read (int ,int ) ;

unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic)
{
 int irq;

 BUG_ON(qe_ic == ((void*)0));


 irq = qe_ic_read(qe_ic->regs, QEIC_CHIVEC) >> 26;

 if (irq == 0)
  return NO_IRQ;

 return irq_linear_revmap(qe_ic->irqhost, irq);
}
