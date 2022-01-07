
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int rx_missed_errors; int rx_crc_errors; int rx_frame_errors; } ;
struct net_device {long base_addr; struct net_device_stats stats; } ;
struct ei_device {int page_lock; } ;


 scalar_t__ EN0_COUNTER0 ;
 scalar_t__ EN0_COUNTER1 ;
 scalar_t__ EN0_COUNTER2 ;
 scalar_t__ inb_p (scalar_t__) ;
 scalar_t__ netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct net_device_stats *get_stats(struct net_device *dev)
{
 long ioaddr = dev->base_addr;
 struct ei_device *ei_local = (struct ei_device *) netdev_priv(dev);
 unsigned long flags;


 if (!netif_running(dev))
  return &dev->stats;

 spin_lock_irqsave(&ei_local->page_lock,flags);

 dev->stats.rx_frame_errors += inb_p(ioaddr + EN0_COUNTER0);
 dev->stats.rx_crc_errors += inb_p(ioaddr + EN0_COUNTER1);
 dev->stats.rx_missed_errors+= inb_p(ioaddr + EN0_COUNTER2);
 spin_unlock_irqrestore(&ei_local->page_lock, flags);

 return &dev->stats;
}
