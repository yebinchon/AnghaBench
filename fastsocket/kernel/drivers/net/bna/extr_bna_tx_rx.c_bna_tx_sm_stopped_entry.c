
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_tx {int dummy; } ;


 int call_tx_stop_cbfn (struct bna_tx*) ;

__attribute__((used)) static void
bna_tx_sm_stopped_entry(struct bna_tx *tx)
{
 call_tx_stop_cbfn(tx);
}
