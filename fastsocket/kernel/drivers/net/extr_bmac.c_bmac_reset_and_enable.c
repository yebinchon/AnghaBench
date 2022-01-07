
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dev_addr; } ;
struct bmac_data {int lock; scalar_t__ sleeping; } ;


 int ETHERMINPACKET ;
 int EnableNormal ;
 int INTDISABLE ;
 int bmac_enable_and_reset_chip (struct net_device*) ;
 int bmac_init_chip (struct net_device*) ;
 int bmac_init_rx_ring (struct bmac_data*) ;
 int bmac_init_tx_ring (struct bmac_data*) ;
 int bmac_start_chip (struct net_device*) ;
 int bmac_transmit_packet (struct sk_buff*,struct net_device*) ;
 int bmwrite (struct net_device*,int ,int ) ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int memcpy (unsigned char*,int ,int) ;
 int memset (unsigned char*,int ,int ) ;
 struct bmac_data* netdev_priv (struct net_device*) ;
 unsigned char* skb_put (struct sk_buff*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void bmac_reset_and_enable(struct net_device *dev)
{
 struct bmac_data *bp = netdev_priv(dev);
 unsigned long flags;
 struct sk_buff *skb;
 unsigned char *data;

 spin_lock_irqsave(&bp->lock, flags);
 bmac_enable_and_reset_chip(dev);
 bmac_init_tx_ring(bp);
 bmac_init_rx_ring(bp);
 bmac_init_chip(dev);
 bmac_start_chip(dev);
 bmwrite(dev, INTDISABLE, EnableNormal);
 bp->sleeping = 0;





 skb = dev_alloc_skb(ETHERMINPACKET);
 if (skb != ((void*)0)) {
  data = skb_put(skb, ETHERMINPACKET);
  memset(data, 0, ETHERMINPACKET);
  memcpy(data, dev->dev_addr, 6);
  memcpy(data+6, dev->dev_addr, 6);
  bmac_transmit_packet(skb, dev);
 }
 spin_unlock_irqrestore(&bp->lock, flags);
}
