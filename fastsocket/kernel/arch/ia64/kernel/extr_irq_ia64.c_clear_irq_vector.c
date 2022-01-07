
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __clear_irq_vector (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vector_lock ;

__attribute__((used)) static void clear_irq_vector(int irq)
{
 unsigned long flags;

 spin_lock_irqsave(&vector_lock, flags);
 __clear_irq_vector(irq);
 spin_unlock_irqrestore(&vector_lock, flags);
}
