
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; int base_addr; } ;
struct dev_priv {int chip_lock; int timer; } ;


 int CSR0 ;
 int CSR0_STOP ;
 int CSR3 ;
 int CSR3_MASKALL ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 struct dev_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_rreg (int ,int ,int ) ;

__attribute__((used)) static int
am79c961_close(struct net_device *dev)
{
 struct dev_priv *priv = netdev_priv(dev);
 unsigned long flags;

 del_timer_sync(&priv->timer);

 netif_stop_queue(dev);
 netif_carrier_off(dev);

 spin_lock_irqsave(&priv->chip_lock, flags);
 write_rreg (dev->base_addr, CSR0, CSR0_STOP);
 write_rreg (dev->base_addr, CSR3, CSR3_MASKALL);
 spin_unlock_irqrestore(&priv->chip_lock, flags);

 free_irq (dev->irq, dev);

 return 0;
}
