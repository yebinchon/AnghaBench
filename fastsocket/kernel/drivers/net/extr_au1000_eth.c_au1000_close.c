
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; int name; } ;
struct au1000_private {int lock; scalar_t__ phy_dev; } ;


 int au1000_debug ;
 int free_irq (int ,struct net_device*) ;
 struct au1000_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_stop (scalar_t__) ;
 int printk (char*,int ,struct net_device*) ;
 int reset_mac_unlocked (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int au1000_close(struct net_device *dev)
{
 unsigned long flags;
 struct au1000_private *const aup = netdev_priv(dev);

 if (au1000_debug > 4)
  printk("%s: close: dev=%p\n", dev->name, dev);

 if (aup->phy_dev)
  phy_stop(aup->phy_dev);

 spin_lock_irqsave(&aup->lock, flags);

 reset_mac_unlocked (dev);


 netif_stop_queue(dev);


 free_irq(dev->irq, dev);
 spin_unlock_irqrestore(&aup->lock, flags);

 return 0;
}
