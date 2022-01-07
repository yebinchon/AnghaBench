
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int fp; int r7; int r4; int r0; } ;



__attribute__((used)) static void set_reg(struct pt_regs *regs, int nr, int val)
{
 if (nr < 4)
  *(unsigned long *)(&regs->r0 + nr) = val;
 else if (nr < 7)
  *(unsigned long *)(&regs->r4 + (nr - 4)) = val;
 else if (nr < 13)
  *(unsigned long *)(&regs->r7 + (nr - 7)) = val;
 else
  *(unsigned long *)(&regs->fp + (nr - 13)) = val;
}
