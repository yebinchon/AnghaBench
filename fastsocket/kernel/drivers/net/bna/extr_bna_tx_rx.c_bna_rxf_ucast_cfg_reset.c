
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct bna_mac {int dummy; } ;
struct bna_rxf {int ucast_pending_set; struct bna_mac ucast_active_mac; scalar_t__ ucast_active_set; int ucast_pending_add_q; int ucast_active_q; TYPE_2__* rx; int ucast_pending_del_q; } ;
typedef enum bna_cleanup_type { ____Placeholder_bna_cleanup_type } bna_cleanup_type ;
struct TYPE_4__ {TYPE_1__* bna; } ;
struct TYPE_3__ {int ucam_mod; } ;


 int BFI_ENET_H2I_MAC_UCAST_CLR_REQ ;
 int BFI_ENET_H2I_MAC_UCAST_DEL_REQ ;
 int BNA_HARD_CLEANUP ;
 int BNA_SOFT_CLEANUP ;
 int bfa_q_deq (int *,struct list_head**) ;
 int bfa_q_qe_init (struct list_head*) ;
 int bna_bfi_ucast_req (struct bna_rxf*,struct bna_mac*,int ) ;
 int bna_ucam_mod_mac_put (int *,struct bna_mac*) ;
 int list_add_tail (struct list_head*,int *) ;
 int list_empty (int *) ;

__attribute__((used)) static int
bna_rxf_ucast_cfg_reset(struct bna_rxf *rxf, enum bna_cleanup_type cleanup)
{
 struct list_head *qe;
 struct bna_mac *mac;


 while (!list_empty(&rxf->ucast_pending_del_q)) {
  bfa_q_deq(&rxf->ucast_pending_del_q, &qe);
  bfa_q_qe_init(qe);
  mac = (struct bna_mac *)qe;
  if (cleanup == BNA_SOFT_CLEANUP)
   bna_ucam_mod_mac_put(&rxf->rx->bna->ucam_mod, mac);
  else {
   bna_bfi_ucast_req(rxf, mac,
    BFI_ENET_H2I_MAC_UCAST_DEL_REQ);
   bna_ucam_mod_mac_put(&rxf->rx->bna->ucam_mod, mac);
   return 1;
  }
 }


 while (!list_empty(&rxf->ucast_active_q)) {
  bfa_q_deq(&rxf->ucast_active_q, &qe);
  bfa_q_qe_init(qe);
  list_add_tail(qe, &rxf->ucast_pending_add_q);
  if (cleanup == BNA_HARD_CLEANUP) {
   mac = (struct bna_mac *)qe;
   bna_bfi_ucast_req(rxf, mac,
    BFI_ENET_H2I_MAC_UCAST_DEL_REQ);
   return 1;
  }
 }

 if (rxf->ucast_active_set) {
  rxf->ucast_pending_set = 1;
  rxf->ucast_active_set = 0;
  if (cleanup == BNA_HARD_CLEANUP) {
   bna_bfi_ucast_req(rxf, &rxf->ucast_active_mac,
    BFI_ENET_H2I_MAC_UCAST_CLR_REQ);
   return 1;
  }
 }

 return 0;
}
