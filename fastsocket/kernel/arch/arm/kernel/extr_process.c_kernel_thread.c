
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long ARM_r1; unsigned long ARM_r2; unsigned long ARM_r3; unsigned long ARM_pc; int ARM_cpsr; } ;
typedef int regs ;
typedef int pid_t ;


 unsigned long CLONE_UNTRACED ;
 unsigned long CLONE_VM ;
 int PSR_ENDSTATE ;
 int PSR_ISETSTATE ;
 int SVC_MODE ;
 int do_fork (unsigned long,int ,struct pt_regs*,int ,int *,int *) ;
 scalar_t__ kernel_thread_exit ;
 scalar_t__ kernel_thread_helper ;
 int memset (struct pt_regs*,int ,int) ;

pid_t kernel_thread(int (*fn)(void *), void *arg, unsigned long flags)
{
 struct pt_regs regs;

 memset(&regs, 0, sizeof(regs));

 regs.ARM_r1 = (unsigned long)arg;
 regs.ARM_r2 = (unsigned long)fn;
 regs.ARM_r3 = (unsigned long)kernel_thread_exit;
 regs.ARM_pc = (unsigned long)kernel_thread_helper;
 regs.ARM_cpsr = SVC_MODE | PSR_ENDSTATE | PSR_ISETSTATE;

 return do_fork(flags|CLONE_VM|CLONE_UNTRACED, 0, &regs, 0, ((void*)0), ((void*)0));
}
