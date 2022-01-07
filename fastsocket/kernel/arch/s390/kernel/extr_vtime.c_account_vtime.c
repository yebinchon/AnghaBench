
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {int system_timer; int user_timer; } ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int system_timer; int user_timer; } ;


 TYPE_1__ S390_lowcore ;
 int do_account_vtime (struct task_struct*,int ) ;
 struct thread_info* task_thread_info (struct task_struct*) ;

void account_vtime(struct task_struct *prev, struct task_struct *next)
{
 struct thread_info *ti;

 do_account_vtime(prev, 0);
 ti = task_thread_info(prev);
 ti->user_timer = S390_lowcore.user_timer;
 ti->system_timer = S390_lowcore.system_timer;
 ti = task_thread_info(next);
 S390_lowcore.user_timer = ti->user_timer;
 S390_lowcore.system_timer = ti->system_timer;
}
