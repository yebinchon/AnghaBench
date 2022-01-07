
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; int * netdev_ops; } ;
struct ixpdev_priv {int channel; scalar_t__ tx_queue_entries; int napi; struct net_device* dev; } ;


 int NETIF_F_HW_CSUM ;
 int NETIF_F_SG ;
 struct net_device* alloc_etherdev (int) ;
 int ixpdev_netdev_ops ;
 int ixpdev_poll ;
 struct ixpdev_priv* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;

struct net_device *ixpdev_alloc(int channel, int sizeof_priv)
{
 struct net_device *dev;
 struct ixpdev_priv *ip;

 dev = alloc_etherdev(sizeof_priv);
 if (dev == ((void*)0))
  return ((void*)0);

 dev->netdev_ops = &ixpdev_netdev_ops;

 dev->features |= NETIF_F_SG | NETIF_F_HW_CSUM;

 ip = netdev_priv(dev);
 ip->dev = dev;
 netif_napi_add(dev, &ip->napi, ixpdev_poll, 64);
 ip->channel = channel;
 ip->tx_queue_entries = 0;

 return dev;
}
