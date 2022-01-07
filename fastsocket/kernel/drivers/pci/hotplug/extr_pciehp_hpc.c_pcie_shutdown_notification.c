
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {scalar_t__ notification_enabled; } ;


 int pcie_disable_notification (struct controller*) ;
 int pciehp_free_irq (struct controller*) ;

__attribute__((used)) static void pcie_shutdown_notification(struct controller *ctrl)
{
 if (ctrl->notification_enabled) {
  pcie_disable_notification(ctrl);
  pciehp_free_irq(ctrl);
  ctrl->notification_enabled = 0;
 }
}
