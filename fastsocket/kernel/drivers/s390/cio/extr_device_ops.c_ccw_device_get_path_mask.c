
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subchannel {int lpm; } ;
struct TYPE_2__ {int parent; } ;
struct ccw_device {TYPE_1__ dev; } ;
typedef int __u8 ;


 struct subchannel* to_subchannel (int ) ;

__u8 ccw_device_get_path_mask(struct ccw_device *cdev)
{
 struct subchannel *sch;

 if (!cdev->dev.parent)
  return 0;

 sch = to_subchannel(cdev->dev.parent);
 return sch->lpm;
}
