
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int regs; } ;
struct TYPE_4__ {int forking; TYPE_2__ regs; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;


 int SIGCHLD ;
 int UPT_SP (int *) ;
 TYPE_3__* current ;
 long do_fork (int ,int ,TYPE_2__*,int ,int *,int *) ;

long sys_fork(void)
{
 long ret;

 current->thread.forking = 1;
 ret = do_fork(SIGCHLD, UPT_SP(&current->thread.regs.regs),
        &current->thread.regs, 0, ((void*)0), ((void*)0));
 current->thread.forking = 0;
 return ret;
}
