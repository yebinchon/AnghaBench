
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int current ;
 int prepare_frametrace (struct pt_regs*) ;
 int show_backtrace (int ,struct pt_regs*) ;

void dump_stack(void)
{
 struct pt_regs regs;

 prepare_frametrace(&regs);
 show_backtrace(current, &regs);
}
