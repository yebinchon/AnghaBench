
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad_rx_info {struct bnad_rx_ctrl* rx_ctrl; } ;
struct bnad_rx_ctrl {int napi; struct bna_ccb* ccb; } ;
struct bnad {int dummy; } ;
struct bna_rx {scalar_t__ priv; } ;
struct bna_rcb {int flags; } ;
struct bna_ccb {struct bna_rcb** rcb; } ;


 int BNAD_MAX_RXP_PER_RX ;
 int BNAD_MAX_RXQ_PER_RXP ;
 int BNAD_RXQ_POST_OK ;
 int BNAD_RXQ_STARTED ;
 int bnad_rxq_alloc_init (struct bnad*,struct bna_rcb*) ;
 int bnad_rxq_post (struct bnad*,struct bna_rcb*) ;
 int napi_enable (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void
bnad_cb_rx_post(struct bnad *bnad, struct bna_rx *rx)
{
 struct bnad_rx_info *rx_info = (struct bnad_rx_info *)rx->priv;
 struct bna_ccb *ccb;
 struct bna_rcb *rcb;
 struct bnad_rx_ctrl *rx_ctrl;
 int i, j;

 for (i = 0; i < BNAD_MAX_RXP_PER_RX; i++) {
  rx_ctrl = &rx_info->rx_ctrl[i];
  ccb = rx_ctrl->ccb;
  if (!ccb)
   continue;

  napi_enable(&rx_ctrl->napi);

  for (j = 0; j < BNAD_MAX_RXQ_PER_RXP; j++) {
   rcb = ccb->rcb[j];
   if (!rcb)
    continue;

   bnad_rxq_alloc_init(bnad, rcb);
   set_bit(BNAD_RXQ_STARTED, &rcb->flags);
   set_bit(BNAD_RXQ_POST_OK, &rcb->flags);
   bnad_rxq_post(bnad, rcb);
  }
 }
}
