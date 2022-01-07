
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_port {int dummy; } ;
struct isci_phy {int bcn_received_while_port_unassigned; struct isci_port* owning_port; } ;


 int sci_port_broadcast_change_received (struct isci_port*,struct isci_phy*) ;

void sci_phy_set_port(
 struct isci_phy *iphy,
 struct isci_port *iport)
{
 iphy->owning_port = iport;

 if (iphy->bcn_received_while_port_unassigned) {
  iphy->bcn_received_while_port_unassigned = 0;
  sci_port_broadcast_change_received(iphy->owning_port, iphy);
 }
}
