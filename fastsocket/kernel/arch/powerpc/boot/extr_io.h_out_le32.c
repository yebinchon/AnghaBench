
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void out_le32(volatile unsigned *addr, int val)
{
 __asm__ __volatile__("stwbrx %1,0,%2; sync" : "=m" (*addr)
        : "r" (val), "r" (addr));
}
