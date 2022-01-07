
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void patch_instruction(unsigned int *addr, unsigned int instr)
{
 *addr = instr;
 asm ("dcbst 0, %0; sync; icbi 0,%0; sync; isync" : : "r" (addr));
}
