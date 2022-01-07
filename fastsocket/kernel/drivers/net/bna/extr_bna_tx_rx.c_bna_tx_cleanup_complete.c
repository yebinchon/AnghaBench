
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_tx {int dummy; } ;


 int TX_E_CLEANUP_DONE ;
 int bfa_fsm_send_event (struct bna_tx*,int ) ;

void
bna_tx_cleanup_complete(struct bna_tx *tx)
{
 bfa_fsm_send_event(tx, TX_E_CLEANUP_DONE);
}
