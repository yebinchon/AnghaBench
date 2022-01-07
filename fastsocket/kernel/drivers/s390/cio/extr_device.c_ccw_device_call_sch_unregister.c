
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subchannel {int dev; } ;
struct TYPE_2__ {int parent; } ;
struct ccw_device {TYPE_1__ dev; } ;


 int css_sch_device_unregister (struct subchannel*) ;
 int get_device (int ) ;
 int put_device (int *) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static void ccw_device_call_sch_unregister(struct ccw_device *cdev)
{
 struct subchannel *sch;


 if (!get_device(cdev->dev.parent))
  return;
 sch = to_subchannel(cdev->dev.parent);
 css_sch_device_unregister(sch);

 put_device(&sch->dev);
}
