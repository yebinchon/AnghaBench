
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int atomic_t ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct task_struct*) ;

void free_task_struct(struct task_struct *p)
{
 if (atomic_dec_and_test((atomic_t *)(p+1)))
  kfree(p);
}
