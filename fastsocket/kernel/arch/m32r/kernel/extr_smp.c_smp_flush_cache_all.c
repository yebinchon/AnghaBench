
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;
typedef int atomic_t ;


 int INVALIDATE_CACHE_IPI ;
 int _flush_cache_copyback_all () ;
 int atomic_set_mask (unsigned long,int *) ;
 int cpu_clear (int ,int ) ;
 int cpu_online_map ;
 unsigned long* cpus_addr (int ) ;
 scalar_t__ flushcache_cpumask ;
 int flushcache_lock ;
 int mb () ;
 int preempt_disable () ;
 int preempt_enable () ;
 int send_IPI_mask (int *,int ,int ) ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void smp_flush_cache_all(void)
{
 cpumask_t cpumask;
 unsigned long *mask;

 preempt_disable();
 cpumask = cpu_online_map;
 cpu_clear(smp_processor_id(), cpumask);
 spin_lock(&flushcache_lock);
 mask=cpus_addr(cpumask);
 atomic_set_mask(*mask, (atomic_t *)&flushcache_cpumask);
 send_IPI_mask(&cpumask, INVALIDATE_CACHE_IPI, 0);
 _flush_cache_copyback_all();
 while (flushcache_cpumask)
  mb();
 spin_unlock(&flushcache_lock);
 preempt_enable();
}
