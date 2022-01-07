
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int unmask_rm9k_irq (unsigned int) ;

__attribute__((used)) static inline void rm9k_cpu_irq_enable(unsigned int irq)
{
 unsigned long flags;

 local_irq_save(flags);
 unmask_rm9k_irq(irq);
 local_irq_restore(flags);
}
