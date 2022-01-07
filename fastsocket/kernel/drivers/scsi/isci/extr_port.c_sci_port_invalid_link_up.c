
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isci_port {struct isci_host* owning_controller; } ;
struct isci_phy {int phy_index; } ;
struct isci_host {int invalid_phy_mask; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_warn (int *,char*) ;

__attribute__((used)) static void sci_port_invalid_link_up(struct isci_port *iport, struct isci_phy *iphy)
{
 struct isci_host *ihost = iport->owning_controller;






 if ((ihost->invalid_phy_mask & (1 << iphy->phy_index)) == 0) {
  ihost->invalid_phy_mask |= 1 << iphy->phy_index;
  dev_warn(&ihost->pdev->dev, "Invalid link up!\n");
 }
}
