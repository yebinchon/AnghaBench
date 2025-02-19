
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int blast_inv_scache_range (unsigned long,unsigned long) ;
 int invalidate_tcache_page (unsigned long) ;
 int pr_debug (char*,unsigned long,unsigned long) ;
 int rm7k_tcache_enabled ;
 int tc_pagesize ;

__attribute__((used)) static void rm7k_sc_inv(unsigned long addr, unsigned long size)
{
 unsigned long end, a;

 pr_debug("rm7k_sc_inv[%08lx,%08lx]", addr, size);


 BUG_ON(size == 0);

 blast_inv_scache_range(addr, addr + size);

 if (!rm7k_tcache_enabled)
  return;

 a = addr & ~(tc_pagesize - 1);
 end = (addr + size - 1) & ~(tc_pagesize - 1);
 while(1) {
  invalidate_tcache_page(a);
  if (a == end)
   break;
  a += tc_pagesize;
 }
}
