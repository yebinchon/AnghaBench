
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int scsw; } ;
struct subchannel {TYPE_2__ schib; } ;
struct TYPE_6__ {int parent; } ;
struct ccw_device {TYPE_5__* private; TYPE_1__ dev; } ;
typedef enum dev_event { ____Placeholder_dev_event } dev_event ;
struct TYPE_9__ {int doverify; } ;
struct TYPE_8__ {int scsw; } ;
struct TYPE_10__ {scalar_t__ state; TYPE_4__ flags; TYPE_3__ irb; } ;


 scalar_t__ DEV_STATE_VERIFY ;
 scalar_t__ DEV_STATE_W4SENSE ;
 int ENODEV ;
 int SCSW_STCTL_STATUS_PEND ;
 int ccw_device_verify_done (struct ccw_device*,int ) ;
 int ccw_device_verify_start (struct ccw_device*) ;
 scalar_t__ cio_update_schib (struct subchannel*) ;
 scalar_t__ scsw_actl (int *) ;
 int scsw_stctl (int *) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static void
ccw_device_online_verify(struct ccw_device *cdev, enum dev_event dev_event)
{
 struct subchannel *sch;

 if (cdev->private->state == DEV_STATE_W4SENSE) {
  cdev->private->flags.doverify = 1;
  return;
 }
 sch = to_subchannel(cdev->dev.parent);




 if (cio_update_schib(sch)) {
  ccw_device_verify_done(cdev, -ENODEV);
  return;
 }

 if (scsw_actl(&sch->schib.scsw) != 0 ||
     (scsw_stctl(&sch->schib.scsw) & SCSW_STCTL_STATUS_PEND) ||
     (scsw_stctl(&cdev->private->irb.scsw) & SCSW_STCTL_STATUS_PEND)) {





  cdev->private->flags.doverify = 1;
  return;
 }

 cdev->private->state = DEV_STATE_VERIFY;
 ccw_device_verify_start(cdev);
}
