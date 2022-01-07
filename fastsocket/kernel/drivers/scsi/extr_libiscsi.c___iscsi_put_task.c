
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_task {int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int iscsi_free_task (struct iscsi_task*) ;

void __iscsi_put_task(struct iscsi_task *task)
{
 if (atomic_dec_and_test(&task->refcount))
  iscsi_free_task(task);
}
