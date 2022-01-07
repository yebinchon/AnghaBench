
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SIGKILL ;
 int SIGTRAP ;
 int __die_if_kernel (char*,struct pt_regs*,int ) ;
 int current ;
 int force_sig (int ,int ) ;
 scalar_t__ gdb_enter ;
 int return_from_debug_flag ;

void
do_debug(struct pt_regs *regs)
{
 __die_if_kernel("Breakpoint in kernel", regs, SIGKILL);



 force_sig(SIGTRAP, current);
}
