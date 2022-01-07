
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void teehbr_write(unsigned long v)
{
 asm("mcr	p14, 6, %0, c1, c0, 0\n" : : "r" (v));
}
