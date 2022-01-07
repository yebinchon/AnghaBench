
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct io_context* io_context; } ;
struct io_context {TYPE_1__* aic; int nr_tasks; } ;
struct TYPE_2__ {int (* exit ) (TYPE_1__*) ;} ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int cfq_exit (struct io_context*) ;
 int put_io_context (struct io_context*) ;
 int stub1 (TYPE_1__*) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

void exit_io_context(struct task_struct *task)
{
 struct io_context *ioc;

 task_lock(task);
 ioc = task->io_context;
 task->io_context = ((void*)0);
 task_unlock(task);

 if (atomic_dec_and_test(&ioc->nr_tasks)) {
  if (ioc->aic && ioc->aic->exit)
   ioc->aic->exit(ioc->aic);
  cfq_exit(ioc);

 }
 put_io_context(ioc);
}
