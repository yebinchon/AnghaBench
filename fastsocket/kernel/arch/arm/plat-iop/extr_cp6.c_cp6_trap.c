
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int dummy; } ;



__attribute__((used)) static int cp6_trap(struct pt_regs *regs, unsigned int instr)
{
 u32 temp;


        asm volatile (
  "mrc	p15, 0, %0, c15, c1, 0\n\t"
  "orr	%0, %0, #(1 << 6)\n\t"
  "mcr	p15, 0, %0, c15, c1, 0\n\t"
  : "=r"(temp));

 return 0;
}
