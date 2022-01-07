
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;
struct ioc3_private {int ioc3_timer; } ;


 int del_timer_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 int ioc3_free_rings (struct ioc3_private*) ;
 int ioc3_stop (struct ioc3_private*) ;
 struct ioc3_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int ioc3_close(struct net_device *dev)
{
 struct ioc3_private *ip = netdev_priv(dev);

 del_timer_sync(&ip->ioc3_timer);

 netif_stop_queue(dev);

 ioc3_stop(ip);
 free_irq(dev->irq, dev);

 ioc3_free_rings(ip);
 return 0;
}
