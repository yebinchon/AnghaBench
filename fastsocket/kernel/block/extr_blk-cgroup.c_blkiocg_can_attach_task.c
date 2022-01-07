
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct io_context* io_context; } ;
struct io_context {int nr_tasks; } ;
struct cgroup {int dummy; } ;


 int EINVAL ;
 int atomic_read (int *) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

__attribute__((used)) static int blkiocg_can_attach_task(struct cgroup *cgrp, struct task_struct *tsk)
{
 struct io_context *ioc;
 int ret = 0;


 task_lock(tsk);
 ioc = tsk->io_context;
 if (ioc && atomic_read(&ioc->nr_tasks) > 1)
  ret = -EINVAL;
 task_unlock(tsk);

 return ret;
}
