
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int isdn_device; int isdn_channel; int flags; scalar_t__ dialstate; TYPE_1__* netdev; int master; int super_tx_queue; } ;
typedef TYPE_2__ isdn_net_local ;
struct TYPE_7__ {int ** st_netdev; int ** rx_netdev; } ;
struct TYPE_5__ {int dev; } ;


 int ISDN_NET_CONNECTED ;
 int ISDN_USAGE_NET ;
 TYPE_4__* dev ;
 size_t isdn_dc2minor (int,int) ;
 int isdn_free_channel (int,int,int ) ;
 int qdisc_reset_all_tx (int ) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void
isdn_net_unbind_channel(isdn_net_local * lp)
{
 skb_queue_purge(&lp->super_tx_queue);

 if (!lp->master) {




  qdisc_reset_all_tx(lp->netdev->dev);
 }
 lp->dialstate = 0;
 dev->rx_netdev[isdn_dc2minor(lp->isdn_device, lp->isdn_channel)] = ((void*)0);
 dev->st_netdev[isdn_dc2minor(lp->isdn_device, lp->isdn_channel)] = ((void*)0);
 if (lp->isdn_device != -1 && lp->isdn_channel != -1)
  isdn_free_channel(lp->isdn_device, lp->isdn_channel,
      ISDN_USAGE_NET);
 lp->flags &= ~ISDN_NET_CONNECTED;
 lp->isdn_device = -1;
 lp->isdn_channel = -1;
}
