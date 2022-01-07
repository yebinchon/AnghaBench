
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;


 int __bind_irq_vector (int,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vector_lock ;

int bind_irq_vector(int irq, int vector, cpumask_t domain)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&vector_lock, flags);
 ret = __bind_irq_vector(irq, vector, domain);
 spin_unlock_irqrestore(&vector_lock, flags);
 return ret;
}
