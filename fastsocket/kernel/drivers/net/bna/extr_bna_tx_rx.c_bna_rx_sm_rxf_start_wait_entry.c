
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_rx {int rxf; TYPE_1__* bna; int (* rx_post_cbfn ) (int ,struct bna_rx*) ;} ;
struct TYPE_2__ {int bnad; } ;


 int bna_rxf_start (int *) ;
 int stub1 (int ,struct bna_rx*) ;

__attribute__((used)) static void bna_rx_sm_rxf_start_wait_entry(struct bna_rx *rx)
{
 rx->rx_post_cbfn(rx->bna->bnad, rx);
 bna_rxf_start(&rx->rxf);
}
