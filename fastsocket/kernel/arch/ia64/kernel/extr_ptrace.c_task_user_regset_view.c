
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_regset_view {int dummy; } ;
struct task_struct {int dummy; } ;


 scalar_t__ IS_IA32_PROCESS (int ) ;
 int task_pt_regs (struct task_struct*) ;
 struct user_regset_view const user_ia64_view ;

const struct user_regset_view *task_user_regset_view(struct task_struct *tsk)
{





 return &user_ia64_view;
}
