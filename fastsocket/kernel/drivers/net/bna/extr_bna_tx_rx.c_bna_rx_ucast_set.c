
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct bna_rxf {int ucast_pending_set; void (* cam_fltr_cbfn ) (struct bnad*,struct bna_rx*) ;int cam_fltr_cbarg; TYPE_4__* ucast_pending_mac; TYPE_2__* rx; } ;
struct bna_rx {TYPE_3__* bna; struct bna_rxf rxf; } ;
typedef enum bna_cb_status { ____Placeholder_bna_cb_status } bna_cb_status ;
struct TYPE_8__ {int addr; int qe; } ;
struct TYPE_7__ {int bnad; } ;
struct TYPE_6__ {TYPE_1__* bna; } ;
struct TYPE_5__ {int ucam_mod; } ;


 int BNA_CB_SUCCESS ;
 int BNA_CB_UCAST_CAM_FULL ;
 int ETH_ALEN ;
 int RXF_E_CONFIG ;
 int bfa_fsm_send_event (struct bna_rxf*,int ) ;
 int bfa_q_qe_init (int *) ;
 TYPE_4__* bna_ucam_mod_mac_get (int *) ;
 int memcpy (int ,int *,int ) ;

enum bna_cb_status
bna_rx_ucast_set(struct bna_rx *rx, u8 *ucmac,
   void (*cbfn)(struct bnad *, struct bna_rx *))
{
 struct bna_rxf *rxf = &rx->rxf;

 if (rxf->ucast_pending_mac == ((void*)0)) {
  rxf->ucast_pending_mac =
    bna_ucam_mod_mac_get(&rxf->rx->bna->ucam_mod);
  if (rxf->ucast_pending_mac == ((void*)0))
   return BNA_CB_UCAST_CAM_FULL;
  bfa_q_qe_init(&rxf->ucast_pending_mac->qe);
 }

 memcpy(rxf->ucast_pending_mac->addr, ucmac, ETH_ALEN);
 rxf->ucast_pending_set = 1;
 rxf->cam_fltr_cbfn = cbfn;
 rxf->cam_fltr_cbarg = rx->bna->bnad;

 bfa_fsm_send_event(rxf, RXF_E_CONFIG);

 return BNA_CB_SUCCESS;
}
