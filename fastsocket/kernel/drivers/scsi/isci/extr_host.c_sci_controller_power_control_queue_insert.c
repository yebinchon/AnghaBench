
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_7__ {scalar_t__ current_state_id; } ;
struct TYPE_5__ {int sas_addr; } ;
struct TYPE_6__ {TYPE_1__ iaf; } ;
struct isci_phy {scalar_t__ protocol; size_t phy_index; TYPE_3__ sm; TYPE_2__ frame_rcvd; } ;
struct TYPE_8__ {scalar_t__ phys_granted_power; int timer_started; int phys_waiting; struct isci_phy** requesters; int timer; } ;
struct isci_host {TYPE_4__ power_control; struct isci_phy* phys; } ;


 int BUG_ON (int ) ;
 scalar_t__ SAS_PROTOCOL_SSP ;
 int SCIC_SDS_CONTROLLER_POWER_CONTROL_INTERVAL ;
 size_t SCI_MAX_PHYS ;
 scalar_t__ SCI_PHY_READY ;
 scalar_t__ max_spin_up (struct isci_host*) ;
 size_t memcmp (int ,int ,int) ;
 int sci_del_timer (int *) ;
 int sci_mod_timer (int *,int ) ;
 int sci_phy_consume_power_handler (struct isci_phy*) ;

void sci_controller_power_control_queue_insert(struct isci_host *ihost,
            struct isci_phy *iphy)
{
 BUG_ON(iphy == ((void*)0));

 if (ihost->power_control.phys_granted_power < max_spin_up(ihost)) {
  ihost->power_control.phys_granted_power++;
  sci_phy_consume_power_handler(iphy);





  if (ihost->power_control.timer_started)
   sci_del_timer(&ihost->power_control.timer);

  sci_mod_timer(&ihost->power_control.timer,
     SCIC_SDS_CONTROLLER_POWER_CONTROL_INTERVAL);
  ihost->power_control.timer_started = 1;

 } else {




  u8 i;
  struct isci_phy *current_phy;

  for (i = 0; i < SCI_MAX_PHYS; i++) {
   u8 other;
   current_phy = &ihost->phys[i];

   other = memcmp(current_phy->frame_rcvd.iaf.sas_addr,
           iphy->frame_rcvd.iaf.sas_addr,
           sizeof(current_phy->frame_rcvd.iaf.sas_addr));

   if (current_phy->sm.current_state_id == SCI_PHY_READY &&
       current_phy->protocol == SAS_PROTOCOL_SSP &&
       other == 0) {
    sci_phy_consume_power_handler(iphy);
    break;
   }
  }

  if (i == SCI_MAX_PHYS) {

   ihost->power_control.requesters[iphy->phy_index] = iphy;
   ihost->power_control.phys_waiting++;
  }
 }
}
