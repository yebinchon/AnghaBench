
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int netdev; int isdn_channel; int isdn_device; int flags; } ;
typedef TYPE_1__ isdn_net_local ;
struct TYPE_5__ {int * st_netdev; int * rx_netdev; int * chanmap; int * drvmap; } ;


 int ISDN_NET_CONNECTED ;
 TYPE_3__* dev ;

__attribute__((used)) static void
isdn_net_bind_channel(isdn_net_local * lp, int idx)
{
 lp->flags |= ISDN_NET_CONNECTED;
 lp->isdn_device = dev->drvmap[idx];
 lp->isdn_channel = dev->chanmap[idx];
 dev->rx_netdev[idx] = lp->netdev;
 dev->st_netdev[idx] = lp->netdev;
}
