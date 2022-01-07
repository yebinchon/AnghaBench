
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int sp; } ;


 int show_registers (struct pt_regs*) ;
 int show_trace (int *,struct pt_regs*,int *) ;

void show_regs(struct pt_regs *regs)
{
 show_registers(regs);
 show_trace(((void*)0), regs, &regs->sp);
}
