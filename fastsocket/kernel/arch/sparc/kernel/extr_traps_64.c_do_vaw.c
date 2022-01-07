
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int die_if_kernel (char*,struct pt_regs*) ;

void do_vaw(struct pt_regs *regs)
{
 die_if_kernel("TL0: Virt Watchpoint Exception", regs);
}
