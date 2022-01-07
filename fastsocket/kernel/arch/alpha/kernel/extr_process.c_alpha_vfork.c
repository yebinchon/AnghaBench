
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int CLONE_VFORK ;
 int CLONE_VM ;
 int SIGCHLD ;
 int do_fork (int,int ,struct pt_regs*,int ,int *,int *) ;
 int rdusp () ;

int
alpha_vfork(struct pt_regs *regs)
{
 return do_fork(CLONE_VFORK | CLONE_VM | SIGCHLD, rdusp(),
         regs, 0, ((void*)0), ((void*)0));
}
