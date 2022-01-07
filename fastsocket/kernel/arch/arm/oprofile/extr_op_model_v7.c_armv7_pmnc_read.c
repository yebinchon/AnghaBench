
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 armv7_pmnc_read(void)
{
 u32 val;

 asm volatile("mrc p15, 0, %0, c9, c12, 0" : "=r" (val));
 return val;
}
