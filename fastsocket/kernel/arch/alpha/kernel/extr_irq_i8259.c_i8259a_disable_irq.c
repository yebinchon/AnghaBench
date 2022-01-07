
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __i8259a_disable_irq (unsigned int) ;
 int i8259_irq_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
i8259a_disable_irq(unsigned int irq)
{
 spin_lock(&i8259_irq_lock);
 __i8259a_disable_irq(irq);
 spin_unlock(&i8259_irq_lock);
}
