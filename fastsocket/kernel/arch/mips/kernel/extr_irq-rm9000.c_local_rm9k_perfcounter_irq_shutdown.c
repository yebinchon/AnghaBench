
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mask_rm9k_irq (unsigned int) ;

__attribute__((used)) static void local_rm9k_perfcounter_irq_shutdown(void *args)
{
 unsigned int irq = (unsigned int) args;
 unsigned long flags;

 local_irq_save(flags);
 mask_rm9k_irq(irq);
 local_irq_restore(flags);
}
