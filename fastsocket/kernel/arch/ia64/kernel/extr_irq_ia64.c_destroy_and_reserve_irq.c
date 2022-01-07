
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_RSVD ;
 int __clear_irq_vector (unsigned int) ;
 int dynamic_irq_cleanup (unsigned int) ;
 int * irq_status ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vector_lock ;

void destroy_and_reserve_irq(unsigned int irq)
{
 unsigned long flags;

 dynamic_irq_cleanup(irq);

 spin_lock_irqsave(&vector_lock, flags);
 __clear_irq_vector(irq);
 irq_status[irq] = IRQ_RSVD;
 spin_unlock_irqrestore(&vector_lock, flags);
}
