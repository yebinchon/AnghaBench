
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_info {int dummy; } ;
struct net_device {int dummy; } ;


 scalar_t__ likely (int ) ;
 struct netfront_info* netdev_priv (struct net_device*) ;
 scalar_t__ netfront_tx_slot_available (struct netfront_info*) ;
 int netif_queue_stopped (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void xennet_maybe_wake_tx(struct net_device *dev)
{
 struct netfront_info *np = netdev_priv(dev);

 if (unlikely(netif_queue_stopped(dev)) &&
     netfront_tx_slot_available(np) &&
     likely(netif_running(dev)))
  netif_wake_queue(dev);
}
