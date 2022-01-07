
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long r0; unsigned long r1; unsigned long r2; unsigned long lr; unsigned long pc; int sr; } ;
typedef int regs ;


 unsigned long CLONE_UNTRACED ;
 unsigned long CLONE_VM ;
 int MODE_SUPERVISOR ;
 scalar_t__ do_exit ;
 int do_fork (unsigned long,int ,struct pt_regs*,int ,int *,int *) ;
 scalar_t__ kernel_thread_helper ;
 int memset (struct pt_regs*,int ,int) ;

int kernel_thread(int (*fn)(void *), void *arg, unsigned long flags)
{
 struct pt_regs regs;

 memset(&regs, 0, sizeof(regs));

 regs.r0 = (unsigned long)arg;
 regs.r1 = (unsigned long)fn;
 regs.r2 = (unsigned long)do_exit;
 regs.lr = (unsigned long)kernel_thread_helper;
 regs.pc = (unsigned long)kernel_thread_helper;
 regs.sr = MODE_SUPERVISOR;

 return do_fork(flags | CLONE_VM | CLONE_UNTRACED,
         0, &regs, 0, ((void*)0), ((void*)0));
}
