
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* outputb ) (TYPE_1__*,int ,int ) ;} ;
struct smi_info {scalar_t__ si_type; scalar_t__ irq; int dev; int irq_cleanup; TYPE_1__ io; } ;


 int DEVICE_NAME ;
 int IPMI_BT_INTMASK_ENABLE_IRQ_BIT ;
 int IPMI_BT_INTMASK_REG ;
 int IRQF_DISABLED ;
 int IRQF_SHARED ;
 scalar_t__ SI_BT ;
 int dev_info (int ,char*,scalar_t__) ;
 int dev_warn (int ,char*,int ,scalar_t__) ;
 int request_irq (scalar_t__,int ,int,int ,struct smi_info*) ;
 int si_bt_irq_handler ;
 int si_irq_handler ;
 int std_irq_cleanup ;
 int stub1 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int std_irq_setup(struct smi_info *info)
{
 int rv;

 if (!info->irq)
  return 0;

 if (info->si_type == SI_BT) {
  rv = request_irq(info->irq,
     si_bt_irq_handler,
     IRQF_SHARED | IRQF_DISABLED,
     DEVICE_NAME,
     info);
  if (!rv)

   info->io.outputb(&info->io, IPMI_BT_INTMASK_REG,
      IPMI_BT_INTMASK_ENABLE_IRQ_BIT);
 } else
  rv = request_irq(info->irq,
     si_irq_handler,
     IRQF_SHARED | IRQF_DISABLED,
     DEVICE_NAME,
     info);
 if (rv) {
  dev_warn(info->dev, "%s unable to claim interrupt %d,"
    " running polled\n",
    DEVICE_NAME, info->irq);
  info->irq = 0;
 } else {
  info->irq_cleanup = std_irq_cleanup;
  dev_info(info->dev, "Using irq %d\n", info->irq);
 }

 return rv;
}
