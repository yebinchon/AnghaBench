
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int lock; TYPE_1__* chip; int affinity; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {int (* set_affinity ) (int,struct cpumask const*) ;} ;


 int cpumask_copy (int ,struct cpumask const*) ;
 struct cpumask* cpumask_of (unsigned int) ;
 struct irq_desc* irq_desc ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (int,struct cpumask const*) ;

__attribute__((used)) static void em_route_irq(int irq, unsigned int cpu)
{
 struct irq_desc *desc = irq_desc + irq;
 const struct cpumask *mask = cpumask_of(cpu);

 spin_lock_irq(&desc->lock);
 cpumask_copy(desc->affinity, mask);
 desc->chip->set_affinity(irq, mask);
 spin_unlock_irq(&desc->lock);
}
