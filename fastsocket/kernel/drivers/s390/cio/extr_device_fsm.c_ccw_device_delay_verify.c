
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ccw_device {TYPE_2__* private; } ;
typedef enum dev_event { ____Placeholder_dev_event } dev_event ;
struct TYPE_3__ {int doverify; } ;
struct TYPE_4__ {TYPE_1__ flags; } ;



__attribute__((used)) static void
ccw_device_delay_verify(struct ccw_device *cdev, enum dev_event dev_event)
{

 cdev->private->flags.doverify = 1;
}
