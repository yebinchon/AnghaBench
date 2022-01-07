
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int name; } ;
struct concap_proto {struct net_device* net_dev; } ;
struct TYPE_4__ {int xmit_lock; scalar_t__ huptimer; int * netdev; } ;
typedef TYPE_1__ isdn_net_local ;
typedef int isdn_net_dev ;


 int IX25DEBUG (char*,int ,...) ;
 TYPE_1__* isdn_net_get_locked_lp (int *) ;
 int isdn_net_writebuf_skb (TYPE_1__*,struct sk_buff*) ;
 scalar_t__ netdev_priv (struct net_device*) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int isdn_concap_dl_data_req(struct concap_proto *concap, struct sk_buff *skb)
{
 struct net_device *ndev = concap -> net_dev;
 isdn_net_dev *nd = ((isdn_net_local *) netdev_priv(ndev))->netdev;
 isdn_net_local *lp = isdn_net_get_locked_lp(nd);

 IX25DEBUG( "isdn_concap_dl_data_req: %s \n", concap->net_dev->name);
 if (!lp) {
  IX25DEBUG( "isdn_concap_dl_data_req: %s : isdn_net_send_skb returned %d\n", concap -> net_dev -> name, 1);
  return 1;
 }
 lp->huptimer = 0;
 isdn_net_writebuf_skb(lp, skb);
 spin_unlock_bh(&lp->xmit_lock);
 IX25DEBUG( "isdn_concap_dl_data_req: %s : isdn_net_send_skb returned %d\n", concap -> net_dev -> name, 0);
 return 0;
}
