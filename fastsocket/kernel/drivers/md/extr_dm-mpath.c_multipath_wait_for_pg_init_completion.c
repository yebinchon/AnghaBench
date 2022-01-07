
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {int pg_init_wait; int lock; int pg_init_in_progress; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int io_schedule () ;
 int remove_wait_queue (int *,int *) ;
 int set_current_state (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait ;

__attribute__((used)) static void multipath_wait_for_pg_init_completion(struct multipath *m)
{
 DECLARE_WAITQUEUE(wait, current);
 unsigned long flags;

 add_wait_queue(&m->pg_init_wait, &wait);

 while (1) {
  set_current_state(TASK_UNINTERRUPTIBLE);

  spin_lock_irqsave(&m->lock, flags);
  if (!m->pg_init_in_progress) {
   spin_unlock_irqrestore(&m->lock, flags);
   break;
  }
  spin_unlock_irqrestore(&m->lock, flags);

  io_schedule();
 }
 set_current_state(TASK_RUNNING);

 remove_wait_queue(&m->pg_init_wait, &wait);
}
