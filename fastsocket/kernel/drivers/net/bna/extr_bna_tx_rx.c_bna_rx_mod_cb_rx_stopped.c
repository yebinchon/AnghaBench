
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rx_mod {int rx_stop_wc; } ;
struct bna_rx {int dummy; } ;


 int bfa_wc_down (int *) ;

__attribute__((used)) static void
bna_rx_mod_cb_rx_stopped(void *arg, struct bna_rx *rx)
{
 struct bna_rx_mod *rx_mod = (struct bna_rx_mod *)arg;

 bfa_wc_down(&rx_mod->rx_stop_wc);
}
