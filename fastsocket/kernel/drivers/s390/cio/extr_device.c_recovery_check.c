
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct ccw_device {int ccwlock; TYPE_1__* private; } ;
struct TYPE_4__ {int devno; int ssid; } ;
struct TYPE_3__ {int state; TYPE_2__ dev_id; } ;


 int CIO_MSG_EVENT (int,char*,int ,int ) ;
 int DEV_EVENT_VERIFY ;


 int dev_fsm_event (struct ccw_device*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 struct ccw_device* to_ccwdev (struct device*) ;

__attribute__((used)) static int recovery_check(struct device *dev, void *data)
{
 struct ccw_device *cdev = to_ccwdev(dev);
 int *redo = data;

 spin_lock_irq(cdev->ccwlock);
 switch (cdev->private->state) {
 case 129:
  CIO_MSG_EVENT(3, "recovery: trigger 0.%x.%04x\n",
         cdev->private->dev_id.ssid,
         cdev->private->dev_id.devno);
  dev_fsm_event(cdev, DEV_EVENT_VERIFY);
  *redo = 1;
  break;
 case 128:
  *redo = 1;
  break;
 }
 spin_unlock_irq(cdev->ccwlock);

 return 0;
}
