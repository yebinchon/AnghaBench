
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct subchannel {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct ccw_device {TYPE_2__* private; int (* handler ) (struct ccw_device*,int ,int ) ;TYPE_1__ dev; } ;
typedef enum dev_event { ____Placeholder_dev_event } dev_event ;
struct TYPE_4__ {int intparm; } ;


 int EIO ;
 int ERR_PTR (int ) ;
 int ccw_device_online_verify (struct ccw_device*,int ) ;
 int ccw_device_set_timeout (struct ccw_device*,int ) ;
 int stub1 (struct ccw_device*,int ,int ) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static void
ccw_device_killing_irq(struct ccw_device *cdev, enum dev_event dev_event)
{
 struct subchannel *sch;

 sch = to_subchannel(cdev->dev.parent);
 ccw_device_set_timeout(cdev, 0);

 ccw_device_online_verify(cdev, 0);

 if (cdev->handler)
  cdev->handler(cdev, cdev->private->intparm,
         ERR_PTR(-EIO));
}
