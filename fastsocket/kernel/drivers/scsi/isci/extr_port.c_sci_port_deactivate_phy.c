
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct isci_port {int active_phy_mask; int enabled_phy_mask; int last_active_phy; int * port_pe_configuration_register; struct isci_host* owning_controller; } ;
struct isci_phy {int phy_index; int max_negotiated_speed; } ;
struct TYPE_3__ {scalar_t__ mode_type; } ;
struct TYPE_4__ {TYPE_1__ controller; } ;
struct isci_host {TYPE_2__ oem_parameters; } ;


 int SAS_LINK_RATE_UNKNOWN ;
 scalar_t__ SCIC_PORT_AUTOMATIC_CONFIGURATION_MODE ;
 int isci_port_link_down (struct isci_host*,struct isci_phy*,struct isci_port*) ;
 int writel (int,int *) ;

void sci_port_deactivate_phy(struct isci_port *iport, struct isci_phy *iphy,
        bool do_notify_user)
{
 struct isci_host *ihost = iport->owning_controller;

 iport->active_phy_mask &= ~(1 << iphy->phy_index);
 iport->enabled_phy_mask &= ~(1 << iphy->phy_index);
 if (!iport->active_phy_mask)
  iport->last_active_phy = iphy->phy_index;

 iphy->max_negotiated_speed = SAS_LINK_RATE_UNKNOWN;




 if (iport->owning_controller->oem_parameters.controller.mode_type ==
  SCIC_PORT_AUTOMATIC_CONFIGURATION_MODE)
  writel(iphy->phy_index,
   &iport->port_pe_configuration_register[iphy->phy_index]);

 if (do_notify_user == 1)
  isci_port_link_down(ihost, iphy, iport);
}
