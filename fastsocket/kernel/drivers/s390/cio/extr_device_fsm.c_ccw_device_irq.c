
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int cons; } ;
struct TYPE_11__ {TYPE_2__ erw; } ;
struct TYPE_12__ {TYPE_3__ esw0; } ;
struct TYPE_9__ {int dstat; } ;
struct TYPE_15__ {TYPE_1__ cmd; } ;
struct irb {TYPE_4__ esw; TYPE_7__ scsw; } ;
struct ccw_device {TYPE_6__* private; int (* handler ) (struct ccw_device*,int ,struct irb*) ;} ;
typedef enum dev_event { ____Placeholder_dev_event } dev_event ;
struct TYPE_13__ {scalar_t__ doverify; scalar_t__ dosense; } ;
struct TYPE_14__ {TYPE_5__ flags; void* state; scalar_t__ intparm; int irb; } ;


 void* DEV_STATE_W4SENSE ;
 int DEV_STAT_UNIT_CHECK ;
 scalar_t__ __LC_IRB ;
 int ccw_device_accumulate_irb (struct ccw_device*,struct irb*) ;
 scalar_t__ ccw_device_call_handler (struct ccw_device*) ;
 scalar_t__ ccw_device_do_sense (struct ccw_device*,struct irb*) ;
 int ccw_device_online_verify (struct ccw_device*,int ) ;
 int memcpy (int *,struct irb*,int) ;
 int scsw_is_solicited (TYPE_7__*) ;
 int scsw_is_tm (TYPE_7__*) ;
 int stub1 (struct ccw_device*,int ,struct irb*) ;

__attribute__((used)) static void
ccw_device_irq(struct ccw_device *cdev, enum dev_event dev_event)
{
 struct irb *irb;
 int is_cmd;

 irb = (struct irb *) __LC_IRB;
 is_cmd = !scsw_is_tm(&irb->scsw);

 if (!scsw_is_solicited(&irb->scsw)) {
  if (is_cmd && (irb->scsw.cmd.dstat & DEV_STAT_UNIT_CHECK) &&
      !irb->esw.esw0.erw.cons) {

   if (ccw_device_do_sense(cdev, irb) != 0)
    goto call_handler_unsol;
   memcpy(&cdev->private->irb, irb, sizeof(struct irb));
   cdev->private->state = DEV_STATE_W4SENSE;
   cdev->private->intparm = 0;
   return;
  }
call_handler_unsol:
  if (cdev->handler)
   cdev->handler (cdev, 0, irb);
  if (cdev->private->flags.doverify)
   ccw_device_online_verify(cdev, 0);
  return;
 }

 ccw_device_accumulate_irb(cdev, irb);
 if (is_cmd && cdev->private->flags.dosense) {
  if (ccw_device_do_sense(cdev, irb) == 0) {
   cdev->private->state = DEV_STATE_W4SENSE;
  }
  return;
 }

 if (ccw_device_call_handler(cdev) && cdev->private->flags.doverify)

  ccw_device_online_verify(cdev, 0);
}
