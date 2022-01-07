
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bna_enet {TYPE_2__* bna; } ;
typedef int mac_t ;
struct TYPE_3__ {int ioc; } ;
struct TYPE_4__ {TYPE_1__ ioceth; } ;


 int bfa_nw_ioc_get_mac (int *) ;

void
bna_enet_perm_mac_get(struct bna_enet *enet, mac_t *mac)
{
 *mac = bfa_nw_ioc_get_mac(&enet->bna->ioceth.ioc);
}
