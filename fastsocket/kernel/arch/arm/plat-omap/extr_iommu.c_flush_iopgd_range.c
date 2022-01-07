
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int L1_CACHE_BYTES ;

__attribute__((used)) static void flush_iopgd_range(u32 *first, u32 *last)
{

 do {
  asm("mcr	p15, 0, %0, c7, c10, 1 @ flush_pgd"
      : : "r" (first));
  first += L1_CACHE_BYTES / sizeof(*first);
 } while (first <= last);
}
