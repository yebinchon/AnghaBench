
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int status; } ;


 int IRQ_DISABLED ;
 int IRQ_INPROGRESS ;
 int cobalt_lock ;
 int enable_cobalt_irq (unsigned int) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void end_cobalt_irq(unsigned int irq)
{
 unsigned long flags;
 struct irq_desc *desc = irq_to_desc(irq);

 spin_lock_irqsave(&cobalt_lock, flags);
 if (!(desc->status & (IRQ_DISABLED | IRQ_INPROGRESS)))
  enable_cobalt_irq(irq);
 spin_unlock_irqrestore(&cobalt_lock, flags);
}
