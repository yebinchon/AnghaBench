
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_rxf {int rxmode_active; int rxmode_pending_bitmask; int rxmode_pending; TYPE_1__* rx; } ;
struct bna {int promisc_rid; } ;
struct TYPE_2__ {struct bna* bna; } ;


 int BFI_INVALID_RID ;
 int BNA_RXMODE_PROMISC ;
 int BNA_STATUS_T_DISABLED ;
 int BNA_STATUS_T_ENABLED ;
 int bna_bfi_rx_promisc_req (struct bna_rxf*,int ) ;
 scalar_t__ is_promisc_disable (int ,int ) ;
 scalar_t__ is_promisc_enable (int ,int ) ;
 int promisc_inactive (int ,int ) ;

__attribute__((used)) static int
bna_rxf_promisc_cfg_apply(struct bna_rxf *rxf)
{
 struct bna *bna = rxf->rx->bna;


 if (is_promisc_enable(rxf->rxmode_pending,
    rxf->rxmode_pending_bitmask)) {

  promisc_inactive(rxf->rxmode_pending,
    rxf->rxmode_pending_bitmask);
  rxf->rxmode_active |= BNA_RXMODE_PROMISC;
  bna_bfi_rx_promisc_req(rxf, BNA_STATUS_T_ENABLED);
  return 1;
 } else if (is_promisc_disable(rxf->rxmode_pending,
    rxf->rxmode_pending_bitmask)) {

  promisc_inactive(rxf->rxmode_pending,
    rxf->rxmode_pending_bitmask);
  rxf->rxmode_active &= ~BNA_RXMODE_PROMISC;
  bna->promisc_rid = BFI_INVALID_RID;
  bna_bfi_rx_promisc_req(rxf, BNA_STATUS_T_DISABLED);
  return 1;
 }

 return 0;
}
