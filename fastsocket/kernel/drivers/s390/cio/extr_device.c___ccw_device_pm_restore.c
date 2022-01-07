
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct subchannel {int lock; int schid; } ;
struct TYPE_4__ {int parent; } ;
struct ccw_device {TYPE_3__* private; TYPE_1__ dev; } ;
typedef scalar_t__ addr_t ;
struct TYPE_5__ {int resuming; } ;
struct TYPE_6__ {scalar_t__ state; TYPE_2__ flags; int wait_q; int path_new_mask; } ;


 scalar_t__ DEV_STATE_DISCONNECTED ;
 scalar_t__ DEV_STATE_OFFLINE ;
 scalar_t__ DEV_STATE_ONLINE ;
 int LPM_ANYPATH ;
 int ccw_device_recognition (struct ccw_device*) ;
 int cio_enable_subchannel (struct subchannel*,int ) ;
 scalar_t__ cio_is_console (int ) ;
 int css_complete_work () ;
 int css_schedule_eval (int ) ;
 scalar_t__ dev_fsm_final_state (struct ccw_device*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 struct subchannel* to_subchannel (int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void __ccw_device_pm_restore(struct ccw_device *cdev)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);

 spin_lock_irq(sch->lock);
 if (cio_is_console(sch->schid)) {
  cio_enable_subchannel(sch, (u32)(addr_t)sch);
  goto out_unlock;
 }




 cdev->private->flags.resuming = 1;
 cdev->private->path_new_mask = LPM_ANYPATH;
 css_schedule_eval(sch->schid);
 spin_unlock_irq(sch->lock);
 css_complete_work();


 sch = to_subchannel(cdev->dev.parent);
 spin_lock_irq(sch->lock);
 if (cdev->private->state != DEV_STATE_ONLINE &&
     cdev->private->state != DEV_STATE_OFFLINE)
  goto out_unlock;

 ccw_device_recognition(cdev);
 spin_unlock_irq(sch->lock);
 wait_event(cdev->private->wait_q, dev_fsm_final_state(cdev) ||
     cdev->private->state == DEV_STATE_DISCONNECTED);
 spin_lock_irq(sch->lock);

out_unlock:
 cdev->private->flags.resuming = 0;
 spin_unlock_irq(sch->lock);
}
