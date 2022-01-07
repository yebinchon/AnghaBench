
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_5__ {scalar_t__ size; int lock; } ;
struct mm_struct {TYPE_2__ context; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;


 int copy_ldt (TYPE_2__*,TYPE_2__*) ;
 TYPE_1__* current ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int init_new_context(struct task_struct *tsk, struct mm_struct *mm)
{
 struct mm_struct *old_mm;
 int retval = 0;

 mutex_init(&mm->context.lock);
 mm->context.size = 0;
 old_mm = current->mm;
 if (old_mm && old_mm->context.size > 0) {
  mutex_lock(&old_mm->context.lock);
  retval = copy_ldt(&mm->context, &old_mm->context);
  mutex_unlock(&old_mm->context.lock);
 }
 return retval;
}
