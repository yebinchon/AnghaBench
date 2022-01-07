
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_4__ {int flags; int dev; TYPE_1__* machinfo; } ;
struct TYPE_3__ {int (* read_devdata ) (int ) ;} ;


 int APM_CRITICAL_SUSPEND ;
 int IRQ_HANDLED ;
 int SHARPSL_APM_QUEUED ;
 int SHARPSL_STATUS_FATAL ;
 int SHARPSL_STATUS_LOCK ;
 int apm_queue_event (int ) ;
 int dev_err (int ,char*) ;
 TYPE_2__ sharpsl_pm ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static irqreturn_t sharpsl_fatal_isr(int irq, void *dev_id)
{
 int is_fatal = 0;

 if (!sharpsl_pm.machinfo->read_devdata(SHARPSL_STATUS_LOCK)) {
  dev_err(sharpsl_pm.dev, "Battery now Unlocked! Suspending.\n");
  is_fatal = 1;
 }

 if (!sharpsl_pm.machinfo->read_devdata(SHARPSL_STATUS_FATAL)) {
  dev_err(sharpsl_pm.dev, "Fatal Batt Error! Suspending.\n");
  is_fatal = 1;
 }

 if (!(sharpsl_pm.flags & SHARPSL_APM_QUEUED) && is_fatal) {
  sharpsl_pm.flags |= SHARPSL_APM_QUEUED;
  apm_queue_event(APM_CRITICAL_SUSPEND);
 }

 return IRQ_HANDLED;
}
