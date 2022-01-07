
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_enet {int dummy; } ;


 int call_enet_mtu_cbfn (struct bna_enet*) ;
 int call_enet_pause_cbfn (struct bna_enet*) ;
 int call_enet_stop_cbfn (struct bna_enet*) ;

__attribute__((used)) static void
bna_enet_sm_stopped_entry(struct bna_enet *enet)
{
 call_enet_pause_cbfn(enet);
 call_enet_mtu_cbfn(enet);
 call_enet_stop_cbfn(enet);
}
