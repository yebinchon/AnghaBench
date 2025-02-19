
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int L1_CACHE_BYTES ;
 unsigned int PAGE_SIZE ;

__attribute__((used)) static void flush_data_cache_page(unsigned long addr)
{
 unsigned int i;
 for (i = 0; i < (PAGE_SIZE / L1_CACHE_BYTES); i += L1_CACHE_BYTES) {
  __asm__ __volatile__(
  "cache 0x0e, [%0, 0]\n"
  "cache 0x1a, [%0, 0]\n"
  "nop\n"
  : : "r" (addr));
  addr += L1_CACHE_BYTES;
 }
}
