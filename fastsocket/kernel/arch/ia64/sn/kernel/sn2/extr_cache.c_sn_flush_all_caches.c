
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long RGN_BASE (int ) ;
 unsigned long RGN_BITS ;
 int RGN_KERNEL ;
 int RGN_UNCACHED ;
 int flush_icache_range (unsigned long,unsigned long) ;
 scalar_t__ is_shub1 () ;
 int mb () ;

void
sn_flush_all_caches(long flush_addr, long bytes)
{
 unsigned long addr = flush_addr;


 if (is_shub1() && (addr & RGN_BITS) == RGN_BASE(RGN_UNCACHED))
  addr = (addr - RGN_BASE(RGN_UNCACHED)) + RGN_BASE(RGN_KERNEL);

 flush_icache_range(addr, addr + bytes);





 flush_icache_range(addr, addr + bytes);
 mb();
}
