
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int lock; scalar_t__ action; } ;


 struct irq_desc* irq_desc ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int irq_in_use(unsigned int irq)
{
 int rc = 0;
 unsigned long flags;
   struct irq_desc *desc = irq_desc + irq;

 spin_lock_irqsave(&desc->lock, flags);
 if (desc->action)
  rc = 1;
 spin_unlock_irqrestore(&desc->lock, flags);
 return rc;
}
