
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fpu_state; } ;
struct task_struct {TYPE_1__ thread; } ;
struct fpucontext {int dummy; } ;
struct fpu_state_struct {int dummy; } ;


 int copy_from_user (int *,struct fpucontext*,int ) ;
 struct task_struct* current ;
 int min (int,int) ;
 int set_using_fpu (struct task_struct*) ;

int fpu_restore_sigcontext(struct fpucontext *fpucontext)
{
 struct task_struct *tsk = current;
 int ret;


 ret = copy_from_user(&tsk->thread.fpu_state,
        fpucontext,
        min(sizeof(struct fpu_state_struct),
     sizeof(struct fpucontext)));
 if (!ret)
  set_using_fpu(tsk);

 return ret;
}
