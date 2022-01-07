
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int rxmode_active; int rxmode_pending_bitmask; int rxmode_pending; } ;
typedef enum bna_cleanup_type { ____Placeholder_bna_cleanup_type } bna_cleanup_type ;


 int BNA_HARD_CLEANUP ;
 int BNA_RXMODE_ALLMULTI ;
 int BNA_STATUS_T_ENABLED ;
 int allmulti_enable (int ,int ) ;
 int allmulti_inactive (int ,int ) ;
 int bna_bfi_mcast_filter_req (struct bna_rxf*,int ) ;
 scalar_t__ is_allmulti_disable (int ,int ) ;

__attribute__((used)) static int
bna_rxf_allmulti_cfg_reset(struct bna_rxf *rxf, enum bna_cleanup_type cleanup)
{

 if (is_allmulti_disable(rxf->rxmode_pending,
    rxf->rxmode_pending_bitmask)) {
  allmulti_inactive(rxf->rxmode_pending,
    rxf->rxmode_pending_bitmask);
  rxf->rxmode_active &= ~BNA_RXMODE_ALLMULTI;
  if (cleanup == BNA_HARD_CLEANUP) {
   bna_bfi_mcast_filter_req(rxf, BNA_STATUS_T_ENABLED);
   return 1;
  }
 }


 if (rxf->rxmode_active & BNA_RXMODE_ALLMULTI) {
  allmulti_enable(rxf->rxmode_pending,
    rxf->rxmode_pending_bitmask);
  rxf->rxmode_active &= ~BNA_RXMODE_ALLMULTI;
  if (cleanup == BNA_HARD_CLEANUP) {
   bna_bfi_mcast_filter_req(rxf, BNA_STATUS_T_ENABLED);
   return 1;
  }
 }

 return 0;
}
