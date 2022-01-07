
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rx {int dummy; } ;


 int call_rx_stop_cbfn (struct bna_rx*) ;

__attribute__((used)) static void bna_rx_sm_stopped_entry(struct bna_rx *rx)
{
 call_rx_stop_cbfn(rx);
}
