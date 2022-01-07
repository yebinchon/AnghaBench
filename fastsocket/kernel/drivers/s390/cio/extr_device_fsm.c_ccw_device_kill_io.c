
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccw_device {TYPE_1__* private; int (* handler ) (struct ccw_device*,int ,int ) ;} ;
struct TYPE_2__ {int iretry; int intparm; int state; } ;


 int DEV_STATE_TIMEOUT_KILL ;
 int EBUSY ;
 int EIO ;
 int ERR_PTR (int ) ;
 int HZ ;
 int ccw_device_cancel_halt_clear (struct ccw_device*) ;
 int ccw_device_online_verify (struct ccw_device*,int ) ;
 int ccw_device_set_timeout (struct ccw_device*,int) ;
 int stub1 (struct ccw_device*,int ,int ) ;

void ccw_device_kill_io(struct ccw_device *cdev)
{
 int ret;

 cdev->private->iretry = 255;
 ret = ccw_device_cancel_halt_clear(cdev);
 if (ret == -EBUSY) {
  ccw_device_set_timeout(cdev, 3*HZ);
  cdev->private->state = DEV_STATE_TIMEOUT_KILL;
  return;
 }

 ccw_device_online_verify(cdev, 0);
 if (cdev->handler)
  cdev->handler(cdev, cdev->private->intparm,
         ERR_PTR(-EIO));
}
