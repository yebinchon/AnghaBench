
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct subchannel {int schid; } ;
struct TYPE_2__ {int parent; } ;
struct ccw_device {scalar_t__ online; TYPE_1__ dev; } ;
typedef enum dev_event { ____Placeholder_dev_event } dev_event ;
typedef scalar_t__ addr_t ;


 int DEV_STATE_NOT_OPER ;
 int ccw_device_done (struct ccw_device*,int ) ;
 int ccw_device_online_verify (struct ccw_device*,int) ;
 scalar_t__ cio_enable_subchannel (struct subchannel*,int ) ;
 int css_schedule_eval (int ) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static void ccw_device_boxed_verify(struct ccw_device *cdev,
        enum dev_event dev_event)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);

 if (cdev->online) {
  if (cio_enable_subchannel(sch, (u32) (addr_t) sch))
   ccw_device_done(cdev, DEV_STATE_NOT_OPER);
  else
   ccw_device_online_verify(cdev, dev_event);
 } else
  css_schedule_eval(sch->schid);
}
