
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_regset_view {int dummy; } ;
struct task_struct {int dummy; } ;


 int TIF_IA32 ;
 scalar_t__ test_tsk_thread_flag (struct task_struct*,int ) ;
 struct user_regset_view const user_x86_32_view ;
 struct user_regset_view const user_x86_64_view ;

const struct user_regset_view *task_user_regset_view(struct task_struct *task)
{
}
