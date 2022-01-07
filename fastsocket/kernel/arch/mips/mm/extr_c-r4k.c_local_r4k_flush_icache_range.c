
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R4600_HIT_CACHEOP_WAR_IMPL ;
 int cpu_has_ic_fills_f_dc ;
 unsigned long dcache_size ;
 unsigned long icache_size ;
 int protected_blast_dcache_range (unsigned long,unsigned long) ;
 int protected_blast_icache_range (unsigned long,unsigned long) ;
 int r4k_blast_dcache () ;
 int r4k_blast_icache () ;

__attribute__((used)) static inline void local_r4k_flush_icache_range(unsigned long start, unsigned long end)
{
 if (!cpu_has_ic_fills_f_dc) {
  if (end - start >= dcache_size) {
   r4k_blast_dcache();
  } else {
   R4600_HIT_CACHEOP_WAR_IMPL;
   protected_blast_dcache_range(start, end);
  }
 }

 if (end - start > icache_size)
  r4k_blast_icache();
 else
  protected_blast_icache_range(start, end);
}
