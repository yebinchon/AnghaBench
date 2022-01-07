
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void l2_inv_all(void)
{
 __asm__("mcr p15, 1, %0, c15, c11, 0" : : "r" (0));
}
