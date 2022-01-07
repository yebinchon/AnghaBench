
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct bna_rxf {void (* cam_fltr_cbfn ) (struct bnad*,struct bna_rx*) ;struct bnad* cam_fltr_cbarg; int mcast_pending_add_q; TYPE_2__* rx; int mcast_active_q; } ;
struct bna_rx {TYPE_3__* bna; struct bna_rxf rxf; } ;
struct bna_mac {int qe; int addr; } ;
typedef enum bna_cb_status { ____Placeholder_bna_cb_status } bna_cb_status ;
struct TYPE_6__ {struct bnad* bnad; } ;
struct TYPE_5__ {TYPE_1__* bna; } ;
struct TYPE_4__ {int mcam_mod; } ;


 int BNA_CB_MCAST_LIST_FULL ;
 int BNA_CB_SUCCESS ;
 int ETH_ALEN ;
 int RXF_E_CONFIG ;
 int bfa_fsm_send_event (struct bna_rxf*,int ) ;
 int bfa_q_qe_init (int *) ;
 scalar_t__ bna_mac_find (int *,int *) ;
 struct bna_mac* bna_mcam_mod_mac_get (int *) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int *,int ) ;

enum bna_cb_status
bna_rx_mcast_add(struct bna_rx *rx, u8 *addr,
   void (*cbfn)(struct bnad *, struct bna_rx *))
{
 struct bna_rxf *rxf = &rx->rxf;
 struct bna_mac *mac;


 if (bna_mac_find(&rxf->mcast_active_q, addr) ||
  bna_mac_find(&rxf->mcast_pending_add_q, addr)) {
  if (cbfn)
   cbfn(rx->bna->bnad, rx);
  return BNA_CB_SUCCESS;
 }

 mac = bna_mcam_mod_mac_get(&rxf->rx->bna->mcam_mod);
 if (mac == ((void*)0))
  return BNA_CB_MCAST_LIST_FULL;
 bfa_q_qe_init(&mac->qe);
 memcpy(mac->addr, addr, ETH_ALEN);
 list_add_tail(&mac->qe, &rxf->mcast_pending_add_q);

 rxf->cam_fltr_cbfn = cbfn;
 rxf->cam_fltr_cbarg = rx->bna->bnad;

 bfa_fsm_send_event(rxf, RXF_E_CONFIG);

 return BNA_CB_SUCCESS;
}
