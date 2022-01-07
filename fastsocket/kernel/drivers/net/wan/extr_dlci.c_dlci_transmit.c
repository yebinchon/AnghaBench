
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct dlci_local {TYPE_2__* slave; } ;
typedef int netdev_tx_t ;
struct TYPE_4__ {TYPE_1__* netdev_ops; } ;
struct TYPE_3__ {int (* ndo_start_xmit ) (struct sk_buff*,TYPE_2__*) ;} ;


 int NETDEV_TX_OK ;
 struct dlci_local* netdev_priv (struct net_device*) ;
 int stub1 (struct sk_buff*,TYPE_2__*) ;

__attribute__((used)) static netdev_tx_t dlci_transmit(struct sk_buff *skb, struct net_device *dev)
{
 struct dlci_local *dlp = netdev_priv(dev);

 if (skb)
  dlp->slave->netdev_ops->ndo_start_xmit(skb, dlp->slave);
 return NETDEV_TX_OK;
}
