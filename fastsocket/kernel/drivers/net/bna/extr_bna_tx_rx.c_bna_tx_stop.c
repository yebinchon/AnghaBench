
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_tx {int flags; TYPE_1__* bna; int * stop_cbarg; int stop_cbfn; } ;
struct TYPE_2__ {int tx_mod; } ;


 int BNA_TX_F_ENET_STARTED ;
 int TX_E_STOP ;
 int bfa_fsm_send_event (struct bna_tx*,int ) ;
 int bna_tx_mod_cb_tx_stopped ;

__attribute__((used)) static void
bna_tx_stop(struct bna_tx *tx)
{
 tx->stop_cbfn = bna_tx_mod_cb_tx_stopped;
 tx->stop_cbarg = &tx->bna->tx_mod;

 tx->flags &= ~BNA_TX_F_ENET_STARTED;
 bfa_fsm_send_event(tx, TX_E_STOP);
}
