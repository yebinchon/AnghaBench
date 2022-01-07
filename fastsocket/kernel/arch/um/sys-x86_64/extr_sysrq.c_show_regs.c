
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int __show_regs (struct pt_regs*) ;
 int current ;
 int show_trace (int ,unsigned long*) ;

void show_regs(struct pt_regs *regs)
{
 __show_regs(regs);
 show_trace(current, (unsigned long *) &regs);
}
