
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ena; } ;
struct TYPE_5__ {TYPE_1__ pmcw; } ;
struct subchannel {int lock; TYPE_2__ schib; int schid; } ;
struct ccw_device {TYPE_3__* private; int (* handler ) (struct ccw_device*,int ,int ) ;} ;
struct TYPE_6__ {scalar_t__ state; int iretry; int wait_q; int intparm; } ;


 scalar_t__ DEV_STATE_QUIESCE ;
 int EBUSY ;
 int EIO ;
 int ERR_PTR (int ) ;
 int HZ ;
 int ccw_device_cancel_halt_clear (struct ccw_device*) ;
 int ccw_device_set_timeout (struct ccw_device*,int) ;
 int cio_disable_subchannel (struct subchannel*) ;
 scalar_t__ cio_is_console (int ) ;
 struct ccw_device* sch_get_cdev (struct subchannel*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int stub1 (struct ccw_device*,int ,int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void io_subchannel_quiesce(struct subchannel *sch)
{
 struct ccw_device *cdev;
 int ret;

 spin_lock_irq(sch->lock);
 cdev = sch_get_cdev(sch);
 if (cio_is_console(sch->schid))
  goto out_unlock;
 if (!sch->schib.pmcw.ena)
  goto out_unlock;
 ret = cio_disable_subchannel(sch);
 if (ret != -EBUSY)
  goto out_unlock;
 if (cdev->handler)
  cdev->handler(cdev, cdev->private->intparm, ERR_PTR(-EIO));
 while (ret == -EBUSY) {
  cdev->private->state = DEV_STATE_QUIESCE;
  cdev->private->iretry = 255;
  ret = ccw_device_cancel_halt_clear(cdev);
  if (ret == -EBUSY) {
   ccw_device_set_timeout(cdev, HZ/10);
   spin_unlock_irq(sch->lock);
   wait_event(cdev->private->wait_q,
       cdev->private->state != DEV_STATE_QUIESCE);
   spin_lock_irq(sch->lock);
  }
  ret = cio_disable_subchannel(sch);
 }
out_unlock:
 spin_unlock_irq(sch->lock);
}
