
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_tx {int dummy; } ;
typedef enum bna_tx_event { ____Placeholder_bna_tx_event } bna_tx_event ;







 int bfa_fsm_set_state (struct bna_tx*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_tx_sm_cleanup_wait ;
 int bna_tx_sm_failed ;
 int bna_tx_sm_start_wait ;

__attribute__((used)) static void
bna_tx_sm_prio_cleanup_wait(struct bna_tx *tx, enum bna_tx_event event)
{
 switch (event) {
 case 128:
  bfa_fsm_set_state(tx, bna_tx_sm_cleanup_wait);
  break;

 case 130:
  bfa_fsm_set_state(tx, bna_tx_sm_failed);
  break;

 case 129:
 case 132:

  break;

 case 131:
  bfa_fsm_set_state(tx, bna_tx_sm_start_wait);
  break;

 default:
  bfa_sm_fault(event);
 }
}
