
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct mm_struct* mm; } ;
struct mm_struct {int context; int mm_users; } ;
typedef scalar_t__ pid_t ;


 int EINVAL ;
 int ESRCH ;
 int atomic_inc (int *) ;
 int cxn_owners_lock ;
 int cxn_pinned ;
 struct task_struct* find_task_by_vpid (scalar_t__) ;
 int get_cxn (int *) ;
 int mmput (struct mm_struct*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 int tasklist_lock ;

int cxn_pin_by_pid(pid_t pid)
{
 struct task_struct *tsk;
 struct mm_struct *mm = ((void*)0);
 int ret;


 if (pid == 0) {
  cxn_pinned = -1;
  return 0;
 }

 ret = -ESRCH;


 read_lock(&tasklist_lock);
 tsk = find_task_by_vpid(pid);
 if (tsk) {
  ret = -EINVAL;

  task_lock(tsk);
  if (tsk->mm) {
   mm = tsk->mm;
   atomic_inc(&mm->mm_users);
   ret = 0;
  }
  task_unlock(tsk);
 }
 read_unlock(&tasklist_lock);

 if (ret < 0)
  return ret;


 spin_lock(&cxn_owners_lock);
 cxn_pinned = get_cxn(&mm->context);
 spin_unlock(&cxn_owners_lock);

 mmput(mm);
 return 0;
}
