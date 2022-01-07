
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;
struct lance_private {int multicast_timer; } ;


 int STOP_LANCE (struct lance_private*) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,void*) ;
 struct lance_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int lance_close(struct net_device *dev)
{
 struct lance_private *lp = netdev_priv(dev);

 netif_stop_queue(dev);
 del_timer_sync(&lp->multicast_timer);

 STOP_LANCE(lp);

 free_irq(dev->irq, (void *) dev);
 return 0;
}
