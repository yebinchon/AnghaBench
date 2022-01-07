
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnad_tx_info {struct bna_tcb** tcb; } ;
struct bnad {int dummy; } ;
struct bna_tcb {size_t id; struct bna_tcb* priv; TYPE_2__* txq; } ;
struct TYPE_4__ {TYPE_1__* tx; } ;
struct TYPE_3__ {scalar_t__ priv; } ;



__attribute__((used)) static void
bnad_cb_tcb_setup(struct bnad *bnad, struct bna_tcb *tcb)
{
 struct bnad_tx_info *tx_info =
   (struct bnad_tx_info *)tcb->txq->tx->priv;

 tcb->priv = tcb;
 tx_info->tcb[tcb->id] = tcb;
}
