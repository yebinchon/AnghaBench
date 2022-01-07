
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static void write_intctl_1(u32 val)
{
 asm volatile("mcr p6, 0, %0, c1, c4, 0"::"r" (val));
}
