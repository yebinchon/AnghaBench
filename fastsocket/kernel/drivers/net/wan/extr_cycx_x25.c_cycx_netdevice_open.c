
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EBUSY ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;

__attribute__((used)) static int cycx_netdevice_open(struct net_device *dev)
{
 if (netif_running(dev))
  return -EBUSY;

 netif_start_queue(dev);
 return 0;
}
