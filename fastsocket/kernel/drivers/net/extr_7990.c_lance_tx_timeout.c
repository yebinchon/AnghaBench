
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int trans_start; } ;


 int jiffies ;
 int lance_reset (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int printk (char*) ;

void lance_tx_timeout(struct net_device *dev)
{
 printk("lance_tx_timeout\n");
 lance_reset(dev);
 dev->trans_start = jiffies;
 netif_wake_queue (dev);
}
