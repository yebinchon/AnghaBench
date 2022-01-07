
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long L1_CACHE_ALIGN (unsigned long) ;
 scalar_t__ L1_CACHE_BYTES ;

__attribute__((used)) static void sh64_icache_inv_current_user_range(unsigned long start, unsigned long end)
{




 unsigned long long aligned_start;
 unsigned long long ull_end;
 unsigned long long addr;

 ull_end = end;







 aligned_start = L1_CACHE_ALIGN(start);
 addr = aligned_start;
 while (addr < ull_end) {
  __asm__ __volatile__ ("icbi %0, 0" : : "r" (addr));
  __asm__ __volatile__ ("nop");
  __asm__ __volatile__ ("nop");
  addr += L1_CACHE_BYTES;
 }
}
