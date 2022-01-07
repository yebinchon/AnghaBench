
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dummy; } ;
struct net_device_stats {int dummy; } ;
struct net_device {struct net_device_stats stats; } ;


 struct niu* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int niu_get_rx_stats (struct niu*) ;
 int niu_get_tx_stats (struct niu*) ;

__attribute__((used)) static struct net_device_stats *niu_get_stats(struct net_device *dev)
{
 struct niu *np = netdev_priv(dev);

 if (netif_running(dev)) {
  niu_get_rx_stats(np);
  niu_get_tx_stats(np);
 }
 return &dev->stats;
}
