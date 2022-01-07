
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_enet {int mtu; } ;



int
bna_enet_mtu_get(struct bna_enet *enet)
{
 return enet->mtu;
}
