
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct list_head {int dummy; } ;
struct bna_rxf {void (* cam_fltr_cbfn ) (struct bnad*,struct bna_rx*) ;TYPE_3__* rx; int cam_fltr_cbarg; struct list_head mcast_pending_add_q; struct list_head mcast_pending_del_q; struct list_head mcast_active_q; } ;
struct bna_rx {TYPE_1__* bna; struct bna_rxf rxf; } ;
struct bna_mac {struct list_head qe; int addr; } ;
typedef enum bna_cb_status { ____Placeholder_bna_cb_status } bna_cb_status ;
struct TYPE_6__ {TYPE_2__* bna; } ;
struct TYPE_5__ {int mcam_mod; } ;
struct TYPE_4__ {int bnad; } ;


 int BNA_CB_MCAST_LIST_FULL ;
 int BNA_CB_SUCCESS ;
 int ETH_ALEN ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int RXF_E_CONFIG ;
 int bfa_fsm_send_event (struct bna_rxf*,int ) ;
 int bfa_q_deq (struct list_head*,struct list_head**) ;
 int bfa_q_qe_init (struct list_head*) ;
 struct bna_mac* bna_mcam_mod_mac_get (int *) ;
 int bna_mcam_mod_mac_put (int *,struct bna_mac*) ;
 int list_add_tail (struct list_head*,struct list_head*) ;
 int list_empty (struct list_head*) ;
 int memcpy (int ,int *,int ) ;

enum bna_cb_status
bna_rx_mcast_listset(struct bna_rx *rx, int count, u8 *mclist,
       void (*cbfn)(struct bnad *, struct bna_rx *))
{
 struct bna_rxf *rxf = &rx->rxf;
 struct list_head list_head;
 struct list_head *qe;
 u8 *mcaddr;
 struct bna_mac *mac;
 int i;


 INIT_LIST_HEAD(&list_head);
 for (i = 0, mcaddr = mclist; i < count; i++) {
  mac = bna_mcam_mod_mac_get(&rxf->rx->bna->mcam_mod);
  if (mac == ((void*)0))
   goto err_return;
  bfa_q_qe_init(&mac->qe);
  memcpy(mac->addr, mcaddr, ETH_ALEN);
  list_add_tail(&mac->qe, &list_head);

  mcaddr += ETH_ALEN;
 }


 while (!list_empty(&rxf->mcast_pending_add_q)) {
  bfa_q_deq(&rxf->mcast_pending_add_q, &qe);
  bfa_q_qe_init(qe);
  mac = (struct bna_mac *)qe;
  bna_mcam_mod_mac_put(&rxf->rx->bna->mcam_mod, mac);
 }


 while (!list_empty(&rxf->mcast_active_q)) {
  bfa_q_deq(&rxf->mcast_active_q, &qe);
  mac = (struct bna_mac *)qe;
  bfa_q_qe_init(&mac->qe);
  list_add_tail(&mac->qe, &rxf->mcast_pending_del_q);
 }


 while (!list_empty(&list_head)) {
  bfa_q_deq(&list_head, &qe);
  mac = (struct bna_mac *)qe;
  bfa_q_qe_init(&mac->qe);
  list_add_tail(&mac->qe, &rxf->mcast_pending_add_q);
 }

 rxf->cam_fltr_cbfn = cbfn;
 rxf->cam_fltr_cbarg = rx->bna->bnad;
 bfa_fsm_send_event(rxf, RXF_E_CONFIG);

 return BNA_CB_SUCCESS;

err_return:
 while (!list_empty(&list_head)) {
  bfa_q_deq(&list_head, &qe);
  mac = (struct bna_mac *)qe;
  bfa_q_qe_init(&mac->qe);
  bna_mcam_mod_mac_put(&rxf->rx->bna->mcam_mod, mac);
 }

 return BNA_CB_MCAST_LIST_FULL;
}
