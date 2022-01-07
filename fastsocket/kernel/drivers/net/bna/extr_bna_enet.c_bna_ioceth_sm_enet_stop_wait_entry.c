
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_ioceth {TYPE_1__* bna; } ;
struct TYPE_2__ {int enet; int stats_mod; } ;


 int bna_enet_stop (int *) ;
 int bna_stats_mod_stop (int *) ;

__attribute__((used)) static void
bna_ioceth_sm_enet_stop_wait_entry(struct bna_ioceth *ioceth)
{
 bna_stats_mod_stop(&ioceth->bna->stats_mod);
 bna_enet_stop(&ioceth->bna->enet);
}
