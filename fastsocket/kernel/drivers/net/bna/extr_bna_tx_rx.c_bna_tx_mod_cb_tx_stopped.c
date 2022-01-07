
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_tx_mod {int tx_stop_wc; } ;
struct bna_tx {int dummy; } ;


 int bfa_wc_down (int *) ;

__attribute__((used)) static void
bna_tx_mod_cb_tx_stopped(void *arg, struct bna_tx *tx)
{
 struct bna_tx_mod *tx_mod = (struct bna_tx_mod *)arg;

 bfa_wc_down(&tx_mod->tx_stop_wc);
}
