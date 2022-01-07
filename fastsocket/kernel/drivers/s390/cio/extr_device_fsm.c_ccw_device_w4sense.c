
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct irb {int scsw; } ;
struct ccw_device {TYPE_3__* private; int (* handler ) (struct ccw_device*,int ,struct irb*) ;} ;
typedef enum dev_event { ____Placeholder_dev_event } dev_event ;
struct TYPE_5__ {scalar_t__ doverify; scalar_t__ dosense; } ;
struct TYPE_4__ {int devno; int ssid; } ;
struct TYPE_6__ {TYPE_2__ flags; int wait_q; int state; int irb; TYPE_1__ dev_id; } ;


 int CIO_MSG_EVENT (int ,char*,int ,int ) ;
 int DEV_STATE_ONLINE ;
 int SCSW_FCTL_CLEAR_FUNC ;
 int SCSW_FCTL_HALT_FUNC ;
 int SCSW_STCTL_ALERT_STATUS ;
 int SCSW_STCTL_STATUS_PEND ;
 scalar_t__ __LC_IRB ;
 int ccw_device_accumulate_basic_sense (struct ccw_device*,struct irb*) ;
 int ccw_device_accumulate_irb (struct ccw_device*,struct irb*) ;
 scalar_t__ ccw_device_call_handler (struct ccw_device*) ;
 int ccw_device_do_sense (struct ccw_device*,struct irb*) ;
 int ccw_device_online_verify (struct ccw_device*,int ) ;
 int memset (int *,int ,int) ;
 int scsw_cc (int *) ;
 int scsw_fctl (int *) ;
 int scsw_stctl (int *) ;
 int stub1 (struct ccw_device*,int ,struct irb*) ;
 int wake_up (int *) ;

__attribute__((used)) static void
ccw_device_w4sense(struct ccw_device *cdev, enum dev_event dev_event)
{
 struct irb *irb;

 irb = (struct irb *) __LC_IRB;

 if (scsw_stctl(&irb->scsw) ==
     (SCSW_STCTL_STATUS_PEND | SCSW_STCTL_ALERT_STATUS)) {
  if (scsw_cc(&irb->scsw) == 1)

   ccw_device_do_sense(cdev, irb);
  else {
   CIO_MSG_EVENT(0, "0.%x.%04x: unsolicited "
          "interrupt during w4sense...\n",
          cdev->private->dev_id.ssid,
          cdev->private->dev_id.devno);
   if (cdev->handler)
    cdev->handler (cdev, 0, irb);
  }
  return;
 }





 if (scsw_fctl(&irb->scsw) &
     (SCSW_FCTL_CLEAR_FUNC | SCSW_FCTL_HALT_FUNC)) {
  cdev->private->flags.dosense = 0;
  memset(&cdev->private->irb, 0, sizeof(struct irb));
  ccw_device_accumulate_irb(cdev, irb);
  goto call_handler;
 }

 ccw_device_accumulate_basic_sense(cdev, irb);
 if (cdev->private->flags.dosense) {

  ccw_device_do_sense(cdev, irb);
  return;
 }
call_handler:
 cdev->private->state = DEV_STATE_ONLINE;

 wake_up(&cdev->private->wait_q);

 if (ccw_device_call_handler(cdev) && cdev->private->flags.doverify)

  ccw_device_online_verify(cdev, 0);
}
