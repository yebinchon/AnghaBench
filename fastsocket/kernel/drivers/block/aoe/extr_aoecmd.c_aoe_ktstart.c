
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct ktstate {int rendez; struct task_struct* task; int name; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int init_completion (int *) ;
 int kthread ;
 struct task_struct* kthread_run (int ,struct ktstate*,int ) ;
 int wait_for_completion (int *) ;

int
aoe_ktstart(struct ktstate *k)
{
 struct task_struct *task;

 init_completion(&k->rendez);
 task = kthread_run(kthread, k, k->name);
 if (task == ((void*)0) || IS_ERR(task))
  return -ENOMEM;
 k->task = task;
 wait_for_completion(&k->rendez);
 init_completion(&k->rendez);
 return 0;
}
