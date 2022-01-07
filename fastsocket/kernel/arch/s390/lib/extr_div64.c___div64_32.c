
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef unsigned long uint32_t ;



uint32_t __div64_32(uint64_t *n, uint32_t base)
{
 register uint32_t reg2 asm("2");
 register uint32_t reg3 asm("3");
 uint32_t *words = (uint32_t *) n;

 reg2 = 0UL;
 reg3 = words[0];
 asm volatile(
  "	dlr	%0,%2\n"
  : "+d" (reg2), "+d" (reg3) : "d" (base) : "cc" );
 words[0] = reg3;
 reg3 = words[1];
 asm volatile(
  "	dlr	%0,%2\n"
  : "+d" (reg2), "+d" (reg3) : "d" (base) : "cc" );
 words[1] = reg3;
 return reg2;
}
