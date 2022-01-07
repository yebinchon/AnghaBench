
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int HARDIRQ_OFFSET ;
 int do_account_vtime (struct task_struct*,int ) ;

void account_process_tick(struct task_struct *tsk, int user_tick)
{
 do_account_vtime(tsk, HARDIRQ_OFFSET);
}
