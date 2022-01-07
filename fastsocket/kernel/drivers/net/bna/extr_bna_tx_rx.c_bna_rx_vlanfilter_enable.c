
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct bna_rxf {scalar_t__ vlan_filter_status; scalar_t__ vlan_pending_bitmask; } ;
struct bna_rx {struct bna_rxf rxf; } ;


 scalar_t__ BFI_VLAN_BMASK_ALL ;
 scalar_t__ BNA_STATUS_T_DISABLED ;
 scalar_t__ BNA_STATUS_T_ENABLED ;
 int RXF_E_CONFIG ;
 int bfa_fsm_send_event (struct bna_rxf*,int ) ;

void
bna_rx_vlanfilter_enable(struct bna_rx *rx)
{
 struct bna_rxf *rxf = &rx->rxf;

 if (rxf->vlan_filter_status == BNA_STATUS_T_DISABLED) {
  rxf->vlan_filter_status = BNA_STATUS_T_ENABLED;
  rxf->vlan_pending_bitmask = (u8)BFI_VLAN_BMASK_ALL;
  bfa_fsm_send_event(rxf, RXF_E_CONFIG);
 }
}
