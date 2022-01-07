
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long bx; unsigned long dx; int orig_ax; unsigned long ip; int cs; int flags; int gs; int fs; void* es; void* ds; } ;
typedef int regs ;


 unsigned long CLONE_UNTRACED ;
 unsigned long CLONE_VM ;
 int X86_EFLAGS_IF ;
 int X86_EFLAGS_PF ;
 int X86_EFLAGS_SF ;
 int __KERNEL_CS ;
 int __KERNEL_PERCPU ;
 int __KERNEL_STACK_CANARY ;
 void* __USER_DS ;
 int do_fork (unsigned long,int ,struct pt_regs*,int ,int *,int *) ;
 int get_kernel_rpl () ;
 scalar_t__ kernel_thread_helper ;
 int memset (struct pt_regs*,int ,int) ;

int kernel_thread(int (*fn)(void *), void *arg, unsigned long flags)
{
 struct pt_regs regs;

 memset(&regs, 0, sizeof(regs));

 regs.bx = (unsigned long) fn;
 regs.dx = (unsigned long) arg;

 regs.ds = __USER_DS;
 regs.es = __USER_DS;
 regs.fs = __KERNEL_PERCPU;
 regs.gs = __KERNEL_STACK_CANARY;
 regs.orig_ax = -1;
 regs.ip = (unsigned long) kernel_thread_helper;
 regs.cs = __KERNEL_CS | get_kernel_rpl();
 regs.flags = X86_EFLAGS_IF | X86_EFLAGS_SF | X86_EFLAGS_PF | 0x2;


 return do_fork(flags | CLONE_VM | CLONE_UNTRACED, 0, &regs, 0, ((void*)0), ((void*)0));
}
