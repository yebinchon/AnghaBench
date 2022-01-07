
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int * gpr; } ;


 int CHECK_FULL_REGS (struct pt_regs*) ;
 int CLONE_VFORK ;
 int CLONE_VM ;
 int SIGCHLD ;
 int do_fork (int,int ,struct pt_regs*,int ,int *,int *) ;

int sys_vfork(unsigned long p1, unsigned long p2, unsigned long p3,
       unsigned long p4, unsigned long p5, unsigned long p6,
       struct pt_regs *regs)
{
 CHECK_FULL_REGS(regs);
 return do_fork(CLONE_VFORK | CLONE_VM | SIGCHLD, regs->gpr[1],
   regs, 0, ((void*)0), ((void*)0));
}
