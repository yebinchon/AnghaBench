
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_cfg {int dummy; } ;
struct cpumask {int dummy; } ;


 int __assign_irq_vector (int,struct irq_cfg*,struct cpumask const*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vector_lock ;

int assign_irq_vector(int irq, struct irq_cfg *cfg, const struct cpumask *mask)
{
 int err;
 unsigned long flags;

 spin_lock_irqsave(&vector_lock, flags);
 err = __assign_irq_vector(irq, cfg, mask);
 spin_unlock_irqrestore(&vector_lock, flags);
 return err;
}
