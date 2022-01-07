
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_port_configuration_agent {int phy_ready_mask; int phy_configured_mask; } ;
struct isci_port {int active_phy_mask; } ;
struct isci_phy {int phy_index; } ;
struct isci_host {int dummy; } ;


 int sci_port_link_up (struct isci_port*,struct isci_phy*) ;

__attribute__((used)) static void sci_mpc_agent_link_up(struct isci_host *ihost,
           struct sci_port_configuration_agent *port_agent,
           struct isci_port *iport,
           struct isci_phy *iphy)
{




 if (!iport)
  return;

 port_agent->phy_ready_mask |= (1 << iphy->phy_index);
 sci_port_link_up(iport, iphy);
 if ((iport->active_phy_mask & (1 << iphy->phy_index)))
  port_agent->phy_configured_mask |= (1 << iphy->phy_index);
}
