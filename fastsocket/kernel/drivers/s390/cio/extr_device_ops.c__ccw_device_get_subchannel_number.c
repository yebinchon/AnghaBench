
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ccw_device {TYPE_2__* private; } ;
struct TYPE_3__ {int sch_no; } ;
struct TYPE_4__ {TYPE_1__ schid; } ;



int
_ccw_device_get_subchannel_number(struct ccw_device *cdev)
{
 return cdev->private->schid.sch_no;
}
