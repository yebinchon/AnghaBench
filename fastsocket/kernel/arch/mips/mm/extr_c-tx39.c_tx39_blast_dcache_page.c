
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CPU_TX3912 ;
 int blast_dcache16_page (unsigned long) ;
 scalar_t__ current_cpu_type () ;

__attribute__((used)) static inline void tx39_blast_dcache_page(unsigned long addr)
{
 if (current_cpu_type() != CPU_TX3912)
  blast_dcache16_page(addr);
}
