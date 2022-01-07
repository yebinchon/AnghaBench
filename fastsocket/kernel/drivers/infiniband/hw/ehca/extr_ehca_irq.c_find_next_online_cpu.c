
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehca_comp_pool {int last_cpu; int last_cpu_lock; } ;


 int WARN_ON_ONCE (int) ;
 int cpu_online_mask ;
 int cpumask_first (int ) ;
 int cpumask_next (int,int ) ;
 int cpumask_size () ;
 int ehca_debug_level ;
 int ehca_dmp (int ,int ,char*) ;
 int in_interrupt () ;
 int nr_cpu_ids ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int find_next_online_cpu(struct ehca_comp_pool *pool)
{
 int cpu;
 unsigned long flags;

 WARN_ON_ONCE(!in_interrupt());
 if (ehca_debug_level >= 3)
  ehca_dmp(cpu_online_mask, cpumask_size(), "");

 spin_lock_irqsave(&pool->last_cpu_lock, flags);
 cpu = cpumask_next(pool->last_cpu, cpu_online_mask);
 if (cpu >= nr_cpu_ids)
  cpu = cpumask_first(cpu_online_mask);
 pool->last_cpu = cpu;
 spin_unlock_irqrestore(&pool->last_cpu_lock, flags);

 return cpu;
}
