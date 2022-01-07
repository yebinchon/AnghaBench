
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_tx {TYPE_1__* bna; int (* tx_cleanup_cbfn ) (int ,struct bna_tx*) ;} ;
struct TYPE_2__ {int bnad; } ;


 int call_tx_prio_change_cbfn (struct bna_tx*) ;
 int stub1 (int ,struct bna_tx*) ;

__attribute__((used)) static void
bna_tx_sm_prio_cleanup_wait_entry(struct bna_tx *tx)
{
 call_tx_prio_change_cbfn(tx);
 tx->tx_cleanup_cbfn(tx->bna->bnad, tx);
}
