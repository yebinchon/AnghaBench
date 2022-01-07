
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cached_irq_mask ;
 int i8259_irq_lock ;
 int i8259_update_irq_hw (unsigned int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

inline void
i8259a_enable_irq(unsigned int irq)
{
 spin_lock(&i8259_irq_lock);
 i8259_update_irq_hw(irq, cached_irq_mask &= ~(1 << irq));
 spin_unlock(&i8259_irq_lock);
}
