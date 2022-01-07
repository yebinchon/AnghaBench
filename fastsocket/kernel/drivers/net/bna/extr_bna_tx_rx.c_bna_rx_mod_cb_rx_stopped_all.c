
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_rx_mod {int (* stop_cbfn ) (int *) ;TYPE_1__* bna; } ;
struct TYPE_2__ {int enet; } ;


 int stub1 (int *) ;

__attribute__((used)) static void
bna_rx_mod_cb_rx_stopped_all(void *arg)
{
 struct bna_rx_mod *rx_mod = (struct bna_rx_mod *)arg;

 if (rx_mod->stop_cbfn)
  rx_mod->stop_cbfn(&rx_mod->bna->enet);
 rx_mod->stop_cbfn = ((void*)0);
}
