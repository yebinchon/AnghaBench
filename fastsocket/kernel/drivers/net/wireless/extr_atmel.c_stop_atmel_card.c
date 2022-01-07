
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; int irq; } ;
struct atmel_private {scalar_t__ bus_type; int firmware; int management_timer; } ;


 scalar_t__ BUS_TYPE_PCCARD ;
 int GCR ;
 int atmel_write16 (struct net_device*,int ,int) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int kfree (int ) ;
 struct atmel_private* netdev_priv (struct net_device*) ;
 int release_region (int ,int) ;
 int remove_proc_entry (char*,int *) ;
 int unregister_netdev (struct net_device*) ;

void stop_atmel_card(struct net_device *dev)
{
 struct atmel_private *priv = netdev_priv(dev);


 if (priv->bus_type == BUS_TYPE_PCCARD)
  atmel_write16(dev, GCR, 0x0060);
 atmel_write16(dev, GCR, 0x0040);

 del_timer_sync(&priv->management_timer);
 unregister_netdev(dev);
 remove_proc_entry("driver/atmel", ((void*)0));
 free_irq(dev->irq, dev);
 kfree(priv->firmware);
 release_region(dev->base_addr, 32);
 free_netdev(dev);
}
