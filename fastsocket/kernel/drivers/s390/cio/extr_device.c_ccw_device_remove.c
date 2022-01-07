
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct ccw_driver {int (* remove ) (struct ccw_device*) ;} ;
struct ccw_device {struct ccw_driver* drv; int dev; TYPE_2__* private; int ccwlock; scalar_t__ online; } ;
struct TYPE_3__ {int devno; int ssid; } ;
struct TYPE_4__ {TYPE_1__ dev_id; int wait_q; } ;


 int CIO_MSG_EVENT (int ,char*,int,int ,int ) ;
 int ccw_device_offline (struct ccw_device*) ;
 int ccw_device_set_timeout (struct ccw_device*,int ) ;
 int dev_fsm_final_state (struct ccw_device*) ;
 int put_device (int *) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int stub1 (struct ccw_device*) ;
 struct ccw_device* to_ccwdev (struct device*) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static int
ccw_device_remove (struct device *dev)
{
 struct ccw_device *cdev = to_ccwdev(dev);
 struct ccw_driver *cdrv = cdev->drv;
 int ret;

 if (cdrv->remove)
  cdrv->remove(cdev);
 if (cdev->online) {
  cdev->online = 0;
  spin_lock_irq(cdev->ccwlock);
  ret = ccw_device_offline(cdev);
  spin_unlock_irq(cdev->ccwlock);
  if (ret == 0)
   wait_event(cdev->private->wait_q,
       dev_fsm_final_state(cdev));
  else
   CIO_MSG_EVENT(0, "ccw_device_offline returned %d, "
          "device 0.%x.%04x\n",
          ret, cdev->private->dev_id.ssid,
          cdev->private->dev_id.devno);

  put_device(&cdev->dev);
 }
 ccw_device_set_timeout(cdev, 0);
 cdev->drv = ((void*)0);
 return 0;
}
