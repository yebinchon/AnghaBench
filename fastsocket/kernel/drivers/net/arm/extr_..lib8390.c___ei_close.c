
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ei_device {int page_lock; } ;


 int __NS8390_init (struct net_device*,int ) ;
 scalar_t__ netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int __ei_close(struct net_device *dev)
{
 struct ei_device *ei_local = (struct ei_device *) netdev_priv(dev);
 unsigned long flags;





       spin_lock_irqsave(&ei_local->page_lock, flags);
 __NS8390_init(dev, 0);
       spin_unlock_irqrestore(&ei_local->page_lock, flags);
 netif_stop_queue(dev);
 return 0;
}
