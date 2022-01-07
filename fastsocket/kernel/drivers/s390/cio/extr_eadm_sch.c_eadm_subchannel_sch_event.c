
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int lock; int todo_work; int dev; } ;
struct eadm_private {scalar_t__ state; } ;


 scalar_t__ EADM_IDLE ;
 scalar_t__ EADM_NOT_OPER ;
 int SCH_TODO_UNREG ;
 scalar_t__ cio_update_schib (struct subchannel*) ;
 int css_sched_sch_todo (struct subchannel*,int ) ;
 int device_is_registered (int *) ;
 struct eadm_private* get_eadm_private (struct subchannel*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ work_pending (int *) ;

__attribute__((used)) static int eadm_subchannel_sch_event(struct subchannel *sch, int process)
{
 struct eadm_private *private;
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(sch->lock, flags);
 if (!device_is_registered(&sch->dev))
  goto out_unlock;

 if (work_pending(&sch->todo_work))
  goto out_unlock;

 if (cio_update_schib(sch)) {
  css_sched_sch_todo(sch, SCH_TODO_UNREG);
  goto out_unlock;
 }
 private = get_eadm_private(sch);
 if (private->state == EADM_NOT_OPER)
  private->state = EADM_IDLE;

out_unlock:
 spin_unlock_irqrestore(sch->lock, flags);

 return ret;
}
