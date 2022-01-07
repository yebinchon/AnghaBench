
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct bna_mac {int qe; int addr; } ;
struct bna_rxf {int ucast_active_set; int ucast_active_q; int ucast_pending_add_q; struct bna_mac ucast_active_mac; TYPE_3__* ucast_pending_mac; scalar_t__ ucast_pending_set; TYPE_2__* rx; int ucast_pending_del_q; } ;
struct TYPE_6__ {int addr; } ;
struct TYPE_5__ {TYPE_1__* bna; } ;
struct TYPE_4__ {int ucam_mod; } ;


 int BFI_ENET_H2I_MAC_UCAST_ADD_REQ ;
 int BFI_ENET_H2I_MAC_UCAST_DEL_REQ ;
 int BFI_ENET_H2I_MAC_UCAST_SET_REQ ;
 int ETH_ALEN ;
 int bfa_q_deq (int *,struct list_head**) ;
 int bfa_q_qe_init (struct list_head*) ;
 int bna_bfi_ucast_req (struct bna_rxf*,struct bna_mac*,int ) ;
 int bna_ucam_mod_mac_put (int *,struct bna_mac*) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int
bna_rxf_ucast_cfg_apply(struct bna_rxf *rxf)
{
 struct bna_mac *mac = ((void*)0);
 struct list_head *qe;


 if (!list_empty(&rxf->ucast_pending_del_q)) {
  bfa_q_deq(&rxf->ucast_pending_del_q, &qe);
  bfa_q_qe_init(qe);
  mac = (struct bna_mac *)qe;
  bna_bfi_ucast_req(rxf, mac, BFI_ENET_H2I_MAC_UCAST_DEL_REQ);
  bna_ucam_mod_mac_put(&rxf->rx->bna->ucam_mod, mac);
  return 1;
 }


 if (rxf->ucast_pending_set) {
  rxf->ucast_pending_set = 0;
  memcpy(rxf->ucast_active_mac.addr,
   rxf->ucast_pending_mac->addr, ETH_ALEN);
  rxf->ucast_active_set = 1;
  bna_bfi_ucast_req(rxf, &rxf->ucast_active_mac,
   BFI_ENET_H2I_MAC_UCAST_SET_REQ);
  return 1;
 }


 if (!list_empty(&rxf->ucast_pending_add_q)) {
  bfa_q_deq(&rxf->ucast_pending_add_q, &qe);
  bfa_q_qe_init(qe);
  mac = (struct bna_mac *)qe;
  list_add_tail(&mac->qe, &rxf->ucast_active_q);
  bna_bfi_ucast_req(rxf, mac, BFI_ENET_H2I_MAC_UCAST_ADD_REQ);
  return 1;
 }

 return 0;
}
