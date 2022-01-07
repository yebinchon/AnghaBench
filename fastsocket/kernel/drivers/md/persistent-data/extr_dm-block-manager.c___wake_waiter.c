
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waiter {struct task_struct* task; int list; } ;
struct task_struct {int dummy; } ;


 int list_del (int *) ;
 int smp_mb () ;
 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static void __wake_waiter(struct waiter *w)
{
 struct task_struct *task;

 list_del(&w->list);
 task = w->task;
 smp_mb();
 w->task = ((void*)0);
 wake_up_process(task);
}
