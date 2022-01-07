
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_tx {int flags; } ;
typedef enum bna_tx_event { ____Placeholder_bna_tx_event } bna_tx_event ;


 int BNA_TX_F_BW_UPDATED ;
 int BNA_TX_F_PRIO_CHANGED ;





 int bfa_fsm_set_state (struct bna_tx*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_tx_sm_prio_stop_wait ;
 int bna_tx_sm_started ;
 int bna_tx_sm_stop_wait ;
 int bna_tx_sm_stopped ;

__attribute__((used)) static void
bna_tx_sm_start_wait(struct bna_tx *tx, enum bna_tx_event event)
{
 switch (event) {
 case 128:
  tx->flags &= ~(BNA_TX_F_PRIO_CHANGED | BNA_TX_F_BW_UPDATED);
  bfa_fsm_set_state(tx, bna_tx_sm_stop_wait);
  break;

 case 131:
  tx->flags &= ~(BNA_TX_F_PRIO_CHANGED | BNA_TX_F_BW_UPDATED);
  bfa_fsm_set_state(tx, bna_tx_sm_stopped);
  break;

 case 129:
  if (tx->flags & (BNA_TX_F_PRIO_CHANGED | BNA_TX_F_BW_UPDATED)) {
   tx->flags &= ~(BNA_TX_F_PRIO_CHANGED |
    BNA_TX_F_BW_UPDATED);
   bfa_fsm_set_state(tx, bna_tx_sm_prio_stop_wait);
  } else
   bfa_fsm_set_state(tx, bna_tx_sm_started);
  break;

 case 130:
  tx->flags |= BNA_TX_F_PRIO_CHANGED;
  break;

 case 132:
  tx->flags |= BNA_TX_F_BW_UPDATED;
  break;

 default:
  bfa_sm_fault(event);
 }
}
