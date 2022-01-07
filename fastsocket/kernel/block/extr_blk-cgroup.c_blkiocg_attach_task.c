
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct io_context* io_context; } ;
struct io_context {int cgroup_changed; } ;
struct cgroup {int dummy; } ;


 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

__attribute__((used)) static void blkiocg_attach_task(struct cgroup *cgrp, struct task_struct *tsk)
{
 struct io_context *ioc;

 task_lock(tsk);
 ioc = tsk->io_context;
 if (ioc)
  ioc->cgroup_changed = 1;
 task_unlock(tsk);
}
