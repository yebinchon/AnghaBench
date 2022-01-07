
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long a2; unsigned long d2; unsigned long pc; int epsw; } ;
typedef int regs ;


 unsigned long CLONE_UNTRACED ;
 unsigned long CLONE_VM ;
 int EPSW_IE ;
 int EPSW_IM_7 ;
 int do_fork (unsigned long,int ,struct pt_regs*,int ,int *,int *) ;
 scalar_t__ kernel_thread_helper ;
 int local_save_flags (int) ;
 int memset (struct pt_regs*,int ,int) ;

int kernel_thread(int (*fn)(void *), void *arg, unsigned long flags)
{
 struct pt_regs regs;

 memset(&regs, 0, sizeof(regs));

 regs.a2 = (unsigned long) fn;
 regs.d2 = (unsigned long) arg;
 regs.pc = (unsigned long) kernel_thread_helper;
 local_save_flags(regs.epsw);
 regs.epsw |= EPSW_IE | EPSW_IM_7;


 return do_fork(flags | CLONE_VM | CLONE_UNTRACED, 0, &regs, 0,
         ((void*)0), ((void*)0));
}
