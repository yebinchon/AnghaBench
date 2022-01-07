
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waiter {int task; } ;


 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int current ;
 int schedule () ;
 int set_task_state (int ,int ) ;

__attribute__((used)) static void __wait(struct waiter *w)
{
 for (;;) {
  set_task_state(current, TASK_UNINTERRUPTIBLE);

  if (!w->task)
   break;

  schedule();
 }

 set_task_state(current, TASK_RUNNING);
}
