
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _flush_cache_copyback_all () ;
 int clear_bit (int ,int *) ;
 int flushcache_cpumask ;
 int smp_processor_id () ;

void smp_flush_cache_all_interrupt(void)
{
 _flush_cache_copyback_all();
 clear_bit(smp_processor_id(), &flushcache_cpumask);
}
