
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_regset {int dummy; } ;
struct task_struct {int dummy; } ;


 int TIF_RESTORE_RSE ;
 int do_gpregs_writeback ;
 int do_regset_call (int ,struct task_struct*,struct user_regset const*,int ,int ,int *,int *) ;
 int set_notify_resume (struct task_struct*) ;
 scalar_t__ test_and_set_tsk_thread_flag (struct task_struct*,int ) ;

__attribute__((used)) static int
gpregs_writeback(struct task_struct *target,
   const struct user_regset *regset,
   int now)
{
 if (test_and_set_tsk_thread_flag(target, TIF_RESTORE_RSE))
  return 0;
 set_notify_resume(target);
 return do_regset_call(do_gpregs_writeback, target, regset, 0, 0,
  ((void*)0), ((void*)0));
}
