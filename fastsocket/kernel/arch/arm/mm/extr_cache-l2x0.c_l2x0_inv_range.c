
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CACHE_LINE_SIZE ;
 int L2X0_CLEAN_INV_LINE_PA ;
 int L2X0_INV_LINE_PA ;
 int cache_sync () ;
 int sync_writel (unsigned long,int ,int) ;

__attribute__((used)) static void l2x0_inv_range(unsigned long start, unsigned long end)
{
 unsigned long addr;

 if (start & (CACHE_LINE_SIZE - 1)) {
  start &= ~(CACHE_LINE_SIZE - 1);
  sync_writel(start, L2X0_CLEAN_INV_LINE_PA, 1);
  start += CACHE_LINE_SIZE;
 }

 if (end & (CACHE_LINE_SIZE - 1)) {
  end &= ~(CACHE_LINE_SIZE - 1);
  sync_writel(end, L2X0_CLEAN_INV_LINE_PA, 1);
 }

 for (addr = start; addr < end; addr += CACHE_LINE_SIZE)
  sync_writel(addr, L2X0_INV_LINE_PA, 1);
 cache_sync();
}
