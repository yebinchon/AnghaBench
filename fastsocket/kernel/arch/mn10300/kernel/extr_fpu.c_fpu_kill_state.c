
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* uregs; } ;
struct task_struct {TYPE_2__ thread; } ;
struct TYPE_3__ {int epsw; } ;


 int EPSW_FE ;
 int clear_using_fpu (struct task_struct*) ;
 struct task_struct* fpu_state_owner ;
 int preempt_disable () ;
 int preempt_enable () ;

void fpu_kill_state(struct task_struct *tsk)
{
 clear_using_fpu(tsk);
}
