
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int current ;
 int ptrace_break (int ,struct pt_regs*) ;

__attribute__((used)) static int break_trap(struct pt_regs *regs, unsigned int instr)
{
 ptrace_break(current, regs);
 return 0;
}
