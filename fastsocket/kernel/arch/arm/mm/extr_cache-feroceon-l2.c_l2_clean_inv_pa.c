
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void l2_clean_inv_pa(unsigned long addr)
{
 __asm__("mcr p15, 1, %0, c15, c10, 3" : : "r" (addr));
}
