
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int kobj; int parent; } ;
struct subchannel {int lock; TYPE_4__ dev; } ;
struct ccw_device {TYPE_3__* private; TYPE_4__ dev; int drv; } ;
struct TYPE_9__ {int recog_done; } ;
struct TYPE_8__ {int ssid; int devno; } ;
struct TYPE_10__ {int wait_q; TYPE_2__ flags; TYPE_1__ dev_id; } ;


 int CIO_MSG_EVENT (int ,char*,int,int,int) ;
 int KOBJ_ADD ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int ccw_device_init_count ;
 int ccw_device_init_wq ;
 int ccw_device_register (struct ccw_device*) ;
 int css_update_ssd_info (struct subchannel*) ;
 int dev_set_uevent_suppress (TYPE_4__*,int ) ;
 scalar_t__ device_is_registered (TYPE_4__*) ;
 int device_reprobe (TYPE_4__*) ;
 int kobject_uevent (int *,int ) ;
 int put_device (TYPE_4__*) ;
 int sch_set_cdev (struct subchannel*,int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct subchannel* to_subchannel (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void io_subchannel_register(struct ccw_device *cdev)
{
 struct subchannel *sch;
 int ret, adjust_init_count = 1;
 unsigned long flags;

 sch = to_subchannel(cdev->dev.parent);






 if (!device_is_registered(&sch->dev))
  goto out_err;
 css_update_ssd_info(sch);






 if (device_is_registered(&cdev->dev)) {
  if (!cdev->drv) {
   ret = device_reprobe(&cdev->dev);
   if (ret)

    CIO_MSG_EVENT(0, "device_reprobe() returned"
           " %d for 0.%x.%04x\n", ret,
           cdev->private->dev_id.ssid,
           cdev->private->dev_id.devno);
  }
  adjust_init_count = 0;
  goto out;
 }




 dev_set_uevent_suppress(&sch->dev, 0);
 kobject_uevent(&sch->dev.kobj, KOBJ_ADD);

 ret = ccw_device_register(cdev);
 if (ret) {
  CIO_MSG_EVENT(0, "Could not register ccw dev 0.%x.%04x: %d\n",
         cdev->private->dev_id.ssid,
         cdev->private->dev_id.devno, ret);
  spin_lock_irqsave(sch->lock, flags);
  sch_set_cdev(sch, ((void*)0));
  spin_unlock_irqrestore(sch->lock, flags);

  put_device(&cdev->dev);
  goto out_err;
 }
out:
 cdev->private->flags.recog_done = 1;
 wake_up(&cdev->private->wait_q);
out_err:
 if (adjust_init_count && atomic_dec_and_test(&ccw_device_init_count))
  wake_up(&ccw_device_init_wq);
}
