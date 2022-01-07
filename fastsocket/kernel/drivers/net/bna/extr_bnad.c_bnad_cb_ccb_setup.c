
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bnad_rx_info {TYPE_3__* rx_ctrl; } ;
struct bnad {int dummy; } ;
struct bna_ccb {size_t id; TYPE_3__* ctrl; TYPE_2__* cq; } ;
struct TYPE_6__ {struct bna_ccb* ccb; } ;
struct TYPE_5__ {TYPE_1__* rx; } ;
struct TYPE_4__ {scalar_t__ priv; } ;



__attribute__((used)) static void
bnad_cb_ccb_setup(struct bnad *bnad, struct bna_ccb *ccb)
{
 struct bnad_rx_info *rx_info =
   (struct bnad_rx_info *)ccb->cq->rx->priv;

 rx_info->rx_ctrl[ccb->id].ccb = ccb;
 ccb->ctrl = &rx_info->rx_ctrl[ccb->id];
}
