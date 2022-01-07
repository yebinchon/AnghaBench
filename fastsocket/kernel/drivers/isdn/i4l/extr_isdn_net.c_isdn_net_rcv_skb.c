
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int flags; int dialstate; } ;
typedef TYPE_1__ isdn_net_local ;
struct TYPE_5__ {int dev; TYPE_1__* local; } ;
typedef TYPE_2__ isdn_net_dev ;
struct TYPE_6__ {TYPE_2__** rx_netdev; } ;


 int ISDN_NET_CONNECTED ;
 TYPE_3__* dev ;
 int isdn_net_receive (int ,struct sk_buff*) ;

int
isdn_net_rcv_skb(int idx, struct sk_buff *skb)
{
 isdn_net_dev *p = dev->rx_netdev[idx];

 if (p) {
  isdn_net_local *lp = p->local;
  if ((lp->flags & ISDN_NET_CONNECTED) &&
      (!lp->dialstate)) {
   isdn_net_receive(p->dev, skb);
   return 1;
  }
 }
 return 0;
}
