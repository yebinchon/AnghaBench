
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void _invalidate_dcache(unsigned int addr)
{
  __asm__ __volatile__ ("									wdc	%0, r0" : : "r" (addr));



}
