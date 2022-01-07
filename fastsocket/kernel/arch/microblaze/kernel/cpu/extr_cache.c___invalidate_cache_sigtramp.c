
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __invalidate_icache_range (unsigned long,unsigned long) ;

void __invalidate_cache_sigtramp(unsigned long addr)
{
 __invalidate_icache_range(addr, addr + 8);
}
