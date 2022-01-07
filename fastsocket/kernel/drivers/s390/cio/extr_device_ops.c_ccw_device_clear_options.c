
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ccw_device {TYPE_2__* private; } ;
struct TYPE_3__ {int fast; int repall; int pgroup; int force; int mpath; } ;
struct TYPE_4__ {TYPE_1__ options; } ;


 unsigned long CCWDEV_ALLOW_FORCE ;
 unsigned long CCWDEV_DO_MULTIPATH ;
 unsigned long CCWDEV_DO_PATHGROUP ;
 unsigned long CCWDEV_EARLY_NOTIFICATION ;
 unsigned long CCWDEV_REPORT_ALL ;

void ccw_device_clear_options(struct ccw_device *cdev, unsigned long flags)
{
 cdev->private->options.fast &= (flags & CCWDEV_EARLY_NOTIFICATION) == 0;
 cdev->private->options.repall &= (flags & CCWDEV_REPORT_ALL) == 0;
 cdev->private->options.pgroup &= (flags & CCWDEV_DO_PATHGROUP) == 0;
 cdev->private->options.force &= (flags & CCWDEV_ALLOW_FORCE) == 0;
 cdev->private->options.mpath &= (flags & CCWDEV_DO_MULTIPATH) == 0;
}
