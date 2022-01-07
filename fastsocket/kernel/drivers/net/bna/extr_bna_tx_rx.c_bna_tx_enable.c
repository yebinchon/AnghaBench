
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_tx {scalar_t__ fsm; int flags; } ;
typedef scalar_t__ bfa_sm_t ;


 int BNA_TX_F_ENABLED ;
 int BNA_TX_F_ENET_STARTED ;
 int TX_E_START ;
 int bfa_fsm_send_event (struct bna_tx*,int ) ;
 scalar_t__ bna_tx_sm_stopped ;

void
bna_tx_enable(struct bna_tx *tx)
{
 if (tx->fsm != (bfa_sm_t)bna_tx_sm_stopped)
  return;

 tx->flags |= BNA_TX_F_ENABLED;

 if (tx->flags & BNA_TX_F_ENET_STARTED)
  bfa_fsm_send_event(tx, TX_E_START);
}
