
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void store_inst(void *p)
{
 asm volatile ("dcbst 0,%0; sync; icbi 0,%0; isync" : : "r" (p));
}
