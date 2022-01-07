
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct controller {int poll_timer; TYPE_1__* pcie; } ;
struct TYPE_2__ {int irq; } ;


 int IRQF_SHARED ;
 int MY_NAME ;
 int ctrl_err (struct controller*,char*,int) ;
 int init_timer (int *) ;
 int pcie_isr ;
 scalar_t__ pciehp_poll_mode ;
 int request_irq (int,int ,int ,int ,struct controller*) ;
 int start_int_poll_timer (struct controller*,int) ;

__attribute__((used)) static inline int pciehp_request_irq(struct controller *ctrl)
{
 int retval, irq = ctrl->pcie->irq;


 if (pciehp_poll_mode) {
  init_timer(&ctrl->poll_timer);
  start_int_poll_timer(ctrl, 10);
  return 0;
 }


 retval = request_irq(irq, pcie_isr, IRQF_SHARED, MY_NAME, ctrl);
 if (retval)
  ctrl_err(ctrl, "Cannot get irq %d for the hotplug controller\n",
    irq);
 return retval;
}
