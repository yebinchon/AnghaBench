
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_local {int dummy; } ;
struct net_device {int irq; } ;


 int free_irq (int ,struct net_device*) ;
 scalar_t__ netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int xemaclite_disable_interrupts (struct net_local*) ;

__attribute__((used)) static int xemaclite_close(struct net_device *dev)
{
 struct net_local *lp = (struct net_local *) netdev_priv(dev);

 netif_stop_queue(dev);
 xemaclite_disable_interrupts(lp);
 free_irq(dev->irq, dev);

 return 0;
}
