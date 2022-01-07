
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_enet {int dummy; } ;


 int bna_enet_chld_stop (struct bna_enet*) ;

__attribute__((used)) static void
bna_enet_sm_chld_stop_wait_entry(struct bna_enet *enet)
{
 bna_enet_chld_stop(enet);
}
