
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PMNC_MASK ;

__attribute__((used)) static inline void armv7_pmnc_write(u32 val)
{
 val &= PMNC_MASK;
 asm volatile("mcr p15, 0, %0, c9, c12, 0" : : "r" (val));
}
