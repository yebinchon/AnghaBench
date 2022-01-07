
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



int mv78xx0_core_index(void)
{
 u32 extra;




 __asm__("mrc p15, 1, %0, c15, c1, 0" : "=r" (extra));

 return !!(extra & 0x00004000);
}
