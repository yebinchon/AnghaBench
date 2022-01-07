
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* regs; unsigned long pc; int sr; } ;
typedef int regs ;


 unsigned long CLONE_UNTRACED ;
 unsigned long CLONE_VM ;
 int do_fork (unsigned long,int ,struct pt_regs*,int ,int *,int *) ;
 scalar_t__ kernel_thread_helper ;
 int memset (struct pt_regs*,int ,int) ;

int kernel_thread(int (*fn)(void *), void * arg, unsigned long flags)
{
 struct pt_regs regs;

 memset(&regs, 0, sizeof(regs));
 regs.regs[2] = (unsigned long)arg;
 regs.regs[3] = (unsigned long)fn;

 regs.pc = (unsigned long)kernel_thread_helper;
 regs.sr = (1 << 30);


 return do_fork(flags | CLONE_VM | CLONE_UNTRACED, 0,
        &regs, 0, ((void*)0), ((void*)0));
}
