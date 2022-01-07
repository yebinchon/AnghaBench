
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct subchannel {int lock; } ;
struct stlck_data {int rc; int done; } ;
struct TYPE_4__ {int parent; } ;
struct ccw_device {TYPE_3__* private; scalar_t__ drv; TYPE_1__ dev; } ;
typedef scalar_t__ addr_t ;
struct TYPE_5__ {int force; } ;
struct TYPE_6__ {int state; TYPE_2__ options; } ;


 int DEV_STATE_BOXED ;
 int DEV_STATE_STEAL_LOCK ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int ccw_device_stlck_start (struct ccw_device*,struct stlck_data*,int *,int *) ;
 int ccw_request_cancel (struct ccw_device*) ;
 int cio_disable_subchannel (struct subchannel*) ;
 int cio_enable_subchannel (struct subchannel*,int ) ;
 int init_completion (int *) ;
 int kfree (int *) ;
 int * kzalloc (int,int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 struct subchannel* to_subchannel (int ) ;
 int wait_for_completion (int *) ;
 scalar_t__ wait_for_completion_interruptible (int *) ;

int ccw_device_stlck(struct ccw_device *cdev)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 struct stlck_data data;
 u8 *buffer;
 int rc;


 if (cdev->drv) {
  if (!cdev->private->options.force)
   return -EINVAL;
 }
 buffer = kzalloc(64, GFP_DMA | GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;
 init_completion(&data.done);
 data.rc = -EIO;
 spin_lock_irq(sch->lock);
 rc = cio_enable_subchannel(sch, (u32) (addr_t) sch);
 if (rc)
  goto out_unlock;

 cdev->private->state = DEV_STATE_STEAL_LOCK,
 ccw_device_stlck_start(cdev, &data, &buffer[0], &buffer[32]);
 spin_unlock_irq(sch->lock);

 if (wait_for_completion_interruptible(&data.done)) {

  spin_lock_irq(sch->lock);
  ccw_request_cancel(cdev);
  spin_unlock_irq(sch->lock);
  wait_for_completion(&data.done);
 }
 rc = data.rc;

 spin_lock_irq(sch->lock);
 cio_disable_subchannel(sch);
 cdev->private->state = DEV_STATE_BOXED;
out_unlock:
 spin_unlock_irq(sch->lock);
 kfree(buffer);

 return rc;
}
