
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CACHE_LINE_SIZE ;
 int dsb () ;
 int l2_map_restore_flags (unsigned long) ;
 int l2_map_save_flags (unsigned long) ;
 unsigned long l2_map_va (unsigned long,unsigned long,unsigned long) ;
 int xsc3_l2_clean_mva (unsigned long) ;

__attribute__((used)) static void xsc3_l2_clean_range(unsigned long start, unsigned long end)
{
 unsigned long vaddr, flags;

 vaddr = -1;
 l2_map_save_flags(flags);

 start &= ~(CACHE_LINE_SIZE - 1);
 while (start < end) {
  vaddr = l2_map_va(start, vaddr, flags);
  xsc3_l2_clean_mva(vaddr);
  start += CACHE_LINE_SIZE;
 }

 l2_map_restore_flags(flags);

 dsb();
}
