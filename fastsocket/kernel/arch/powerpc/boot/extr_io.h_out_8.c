
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void out_8(volatile unsigned char *addr, int val)
{
 __asm__ __volatile__("stb%U0%X0 %1,%0; sync"
        : "=m" (*addr) : "r" (val));
}
