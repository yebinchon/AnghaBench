
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fwnet_device {scalar_t__ broadcast_state; } ;


 scalar_t__ FWNET_BROADCAST_ERROR ;
 int fwnet_broadcast_start (struct fwnet_device*) ;
 struct fwnet_device* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;

__attribute__((used)) static int fwnet_open(struct net_device *net)
{
 struct fwnet_device *dev = netdev_priv(net);
 int ret;

 if (dev->broadcast_state == FWNET_BROADCAST_ERROR) {
  ret = fwnet_broadcast_start(dev);
  if (ret)
   return ret;
 }
 netif_start_queue(net);

 return 0;
}
