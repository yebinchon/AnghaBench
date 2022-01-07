
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpumask {int dummy; } ;
struct TYPE_2__ {struct cpumask mask; } ;


 unsigned int FIRST_IRQ ;
 TYPE_1__* irq_allocations ;
 int irq_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int set_affinity_crisv32_irq(unsigned int irq, const struct cpumask *dest)
{
 unsigned long flags;
 spin_lock_irqsave(&irq_lock, flags);
 irq_allocations[irq - FIRST_IRQ].mask = *dest;
 spin_unlock_irqrestore(&irq_lock, flags);

 return 0;
}
