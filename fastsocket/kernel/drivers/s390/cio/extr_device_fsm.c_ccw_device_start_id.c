
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct subchannel {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct ccw_device {TYPE_2__* private; TYPE_1__ dev; } ;
typedef enum dev_event { ____Placeholder_dev_event } dev_event ;
typedef scalar_t__ addr_t ;
struct TYPE_4__ {int state; } ;


 int DEV_STATE_DISCONNECTED_SENSE_ID ;
 int ccw_device_sense_id_start (struct ccw_device*) ;
 scalar_t__ cio_enable_subchannel (struct subchannel*,int ) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static void
ccw_device_start_id(struct ccw_device *cdev, enum dev_event dev_event)
{
 struct subchannel *sch;

 sch = to_subchannel(cdev->dev.parent);
 if (cio_enable_subchannel(sch, (u32)(addr_t)sch) != 0)

  return;
 cdev->private->state = DEV_STATE_DISCONNECTED_SENSE_ID;
 ccw_device_sense_id_start(cdev);
}
