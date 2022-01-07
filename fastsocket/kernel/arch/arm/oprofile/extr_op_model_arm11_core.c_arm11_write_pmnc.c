
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline void arm11_write_pmnc(u32 val)
{

 val &= 0x0ffff77f;
 asm volatile("mcr p15, 0, %0, c15, c12, 0" : : "r" (val));
}
