
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rx {int dummy; } ;


 int bna_bfi_rx_enet_start (struct bna_rx*) ;

__attribute__((used)) static void bna_rx_sm_start_wait_entry(struct bna_rx *rx)
{
 bna_bfi_rx_enet_start(rx);
}
