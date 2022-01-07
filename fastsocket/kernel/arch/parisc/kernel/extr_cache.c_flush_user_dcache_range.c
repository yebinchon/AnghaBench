
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_data_cache () ;
 int flush_user_dcache_range_asm (unsigned long,unsigned long) ;
 unsigned long parisc_cache_flush_threshold ;

void
flush_user_dcache_range(unsigned long start, unsigned long end)
{
 if ((end - start) < parisc_cache_flush_threshold)
  flush_user_dcache_range_asm(start,end);
 else
  flush_data_cache();
}
