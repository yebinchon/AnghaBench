
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ccw_device {scalar_t__ online; TYPE_2__* private; } ;
struct TYPE_3__ {scalar_t__ fake_irb; } ;
struct TYPE_4__ {int state; TYPE_1__ flags; } ;


 int DEV_STATE_DISCONNECTED ;
 int ccw_device_schedule_recovery () ;
 int ccw_device_set_timeout (struct ccw_device*,int ) ;

void ccw_device_set_disconnected(struct ccw_device *cdev)
{
 if (!cdev)
  return;
 ccw_device_set_timeout(cdev, 0);
 cdev->private->flags.fake_irb = 0;
 cdev->private->state = DEV_STATE_DISCONNECTED;
 if (cdev->online)
  ccw_device_schedule_recovery();
}
