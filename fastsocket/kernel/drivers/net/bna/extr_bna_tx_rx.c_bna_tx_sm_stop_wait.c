
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_tx {TYPE_1__* bna; int (* tx_cleanup_cbfn ) (int ,struct bna_tx*) ;} ;
typedef enum bna_tx_event { ____Placeholder_bna_tx_event } bna_tx_event ;
struct TYPE_2__ {int bnad; } ;







 int bfa_fsm_set_state (struct bna_tx*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_tx_enet_stop (struct bna_tx*) ;
 int bna_tx_sm_cleanup_wait ;
 int stub1 (int ,struct bna_tx*) ;

__attribute__((used)) static void
bna_tx_sm_stop_wait(struct bna_tx *tx, enum bna_tx_event event)
{
 switch (event) {
 case 131:
 case 128:
  bfa_fsm_set_state(tx, bna_tx_sm_cleanup_wait);
  tx->tx_cleanup_cbfn(tx->bna->bnad, tx);
  break;

 case 129:




  bna_tx_enet_stop(tx);
  break;

 case 130:
 case 132:

  break;

 default:
  bfa_sm_fault(event);
 }
}
