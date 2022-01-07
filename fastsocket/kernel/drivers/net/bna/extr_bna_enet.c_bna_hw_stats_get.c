
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ stats_get_busy; int ioc_ready; } ;
struct bna {int stats; int bnad; TYPE_1__ stats_mod; } ;


 int BNA_CB_BUSY ;
 int BNA_CB_FAIL ;
 int bna_bfi_stats_get (struct bna*) ;
 int bnad_cb_stats_get (int ,int ,int *) ;

void
bna_hw_stats_get(struct bna *bna)
{
 if (!bna->stats_mod.ioc_ready) {
  bnad_cb_stats_get(bna->bnad, BNA_CB_FAIL, &bna->stats);
  return;
 }
 if (bna->stats_mod.stats_get_busy) {
  bnad_cb_stats_get(bna->bnad, BNA_CB_BUSY, &bna->stats);
  return;
 }

 bna_bfi_stats_get(bna);
}
