
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccw_device {TYPE_1__* private; } ;
typedef enum dev_event { ____Placeholder_dev_event } dev_event ;
struct TYPE_2__ {int wait_q; int state; } ;


 int DEV_STATE_NOT_OPER ;
 int ccw_device_set_timeout (struct ccw_device*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void
ccw_device_quiesce_done(struct ccw_device *cdev, enum dev_event dev_event)
{
 ccw_device_set_timeout(cdev, 0);
 cdev->private->state = DEV_STATE_NOT_OPER;
 wake_up(&cdev->private->wait_q);
}
