
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ current_state_id; } ;
struct isci_phy {int is_in_link_training; TYPE_1__ sm; } ;
struct TYPE_4__ {scalar_t__ phy_ready_mask; scalar_t__ phy_configured_mask; } ;
struct isci_host {TYPE_2__ port_agent; struct isci_phy* phys; } ;


 int SCI_MAX_PHYS ;
 scalar_t__ SCI_PHY_INITIAL ;
 scalar_t__ SCI_PHY_STOPPED ;
 scalar_t__ is_phy_starting (struct isci_phy*) ;
 scalar_t__ is_port_config_apc (struct isci_host*) ;
 int phy_get_non_dummy_port (struct isci_phy*) ;

bool is_controller_start_complete(struct isci_host *ihost)
{
 int i;

 for (i = 0; i < SCI_MAX_PHYS; i++) {
  struct isci_phy *iphy = &ihost->phys[i];
  u32 state = iphy->sm.current_state_id;





  if (is_port_config_apc(ihost))
             ;
  else if (!phy_get_non_dummy_port(iphy))
   continue;







  if ((iphy->is_in_link_training == 0 && state == SCI_PHY_INITIAL) ||
      (iphy->is_in_link_training == 0 && state == SCI_PHY_STOPPED) ||
      (iphy->is_in_link_training == 1 && is_phy_starting(iphy)) ||
      (ihost->port_agent.phy_ready_mask != ihost->port_agent.phy_configured_mask))
   return 0;
 }

 return 1;
}
