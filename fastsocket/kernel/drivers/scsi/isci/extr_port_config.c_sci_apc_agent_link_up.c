
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sci_port_configuration_agent {int phy_ready_mask; } ;
struct isci_port {int dummy; } ;
struct isci_phy {int phy_index; } ;
struct isci_host {int dummy; } ;


 int SCIC_SDS_APC_WAIT_LINK_UP_NOTIFICATION ;
 int sci_apc_agent_start_timer (struct sci_port_configuration_agent*,int ) ;
 int sci_port_link_up (struct isci_port*,struct isci_phy*) ;

__attribute__((used)) static void sci_apc_agent_link_up(struct isci_host *ihost,
           struct sci_port_configuration_agent *port_agent,
           struct isci_port *iport,
           struct isci_phy *iphy)
{
 u8 phy_index = iphy->phy_index;

 if (!iport) {

  port_agent->phy_ready_mask |= 1 << phy_index;
  sci_apc_agent_start_timer(port_agent,
       SCIC_SDS_APC_WAIT_LINK_UP_NOTIFICATION);
 } else {

  port_agent->phy_ready_mask |= 1 << phy_index;
  sci_port_link_up(iport, iphy);
 }
}
