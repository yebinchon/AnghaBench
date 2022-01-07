
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_tx {void (* stop_cbfn ) (void*,struct bna_tx*) ;void* stop_cbarg; int flags; TYPE_1__* bna; } ;
typedef enum bna_cleanup_type { ____Placeholder_bna_cleanup_type } bna_cleanup_type ;
struct TYPE_2__ {void* bnad; } ;


 int BNA_SOFT_CLEANUP ;
 int BNA_TX_F_ENABLED ;
 int TX_E_STOP ;
 int bfa_fsm_send_event (struct bna_tx*,int ) ;
 void stub1 (void*,struct bna_tx*) ;

void
bna_tx_disable(struct bna_tx *tx, enum bna_cleanup_type type,
  void (*cbfn)(void *, struct bna_tx *))
{
 if (type == BNA_SOFT_CLEANUP) {
  (*cbfn)(tx->bna->bnad, tx);
  return;
 }

 tx->stop_cbfn = cbfn;
 tx->stop_cbarg = tx->bna->bnad;

 tx->flags &= ~BNA_TX_F_ENABLED;

 bfa_fsm_send_event(tx, TX_E_STOP);
}
