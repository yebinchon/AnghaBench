
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static void write_intstr_0(u32 val)
{
 asm volatile("mcr p6, 0, %0, c0, c5, 0"::"r" (val));
}
