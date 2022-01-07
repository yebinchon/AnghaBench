
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct mm_struct* active_mm; struct mm_struct* mm; } ;
struct TYPE_2__ {int alloc_pgste; scalar_t__ has_pgste; } ;
struct mm_struct {int ioctx_list; int mm_users; TYPE_1__ context; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ HOME_SPACE_MODE ;
 int atomic_read (int *) ;
 int cpumask_set_cpu (int ,int ) ;
 struct task_struct* current ;
 struct mm_struct* dup_mm (struct task_struct*) ;
 int hlist_empty (int *) ;
 int mm_cpumask (struct mm_struct*) ;
 int mmput (struct mm_struct*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_processor_id () ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 int update_mm (struct mm_struct*,struct task_struct*) ;
 scalar_t__ user_mode ;

int s390_enable_sie(void)
{
 struct task_struct *tsk = current;
 struct mm_struct *mm, *old_mm;


 if (user_mode == HOME_SPACE_MODE)
  return -EINVAL;


 if (tsk->mm->context.has_pgste)
  return 0;


 task_lock(tsk);
 if (!tsk->mm || atomic_read(&tsk->mm->mm_users) > 1 ||



     tsk->mm != tsk->active_mm) {
  task_unlock(tsk);
  return -EINVAL;
 }
 task_unlock(tsk);


 tsk->mm->context.alloc_pgste = 1;
 mm = dup_mm(tsk);
 tsk->mm->context.alloc_pgste = 0;
 if (!mm)
  return -ENOMEM;


 task_lock(tsk);
 if (!tsk->mm || atomic_read(&tsk->mm->mm_users) > 1 ||



     tsk->mm != tsk->active_mm) {
  mmput(mm);
  task_unlock(tsk);
  return -EINVAL;
 }


 old_mm = tsk->mm;
 tsk->mm = tsk->active_mm = mm;
 preempt_disable();
 update_mm(mm, tsk);
 cpumask_set_cpu(smp_processor_id(), mm_cpumask(mm));
 preempt_enable();
 task_unlock(tsk);
 mmput(old_mm);
 return 0;
}
