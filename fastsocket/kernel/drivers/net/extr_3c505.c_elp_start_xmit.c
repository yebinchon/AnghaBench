
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct net_device {int trans_start; int name; } ;
typedef int netdev_tx_t ;
struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ elp_device ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int check_3c505_dma (struct net_device*) ;
 int elp_debug ;
 int jiffies ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pr_debug (char*,int ,...) ;
 int prime_rx (struct net_device*) ;
 int send_packet (struct net_device*,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static netdev_tx_t elp_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 unsigned long flags;
 elp_device *adapter = netdev_priv(dev);

 spin_lock_irqsave(&adapter->lock, flags);
 check_3c505_dma(dev);

 if (elp_debug >= 3)
  pr_debug("%s: request to send packet of length %d\n", dev->name, (int) skb->len);

 netif_stop_queue(dev);




 if (!send_packet(dev, skb)) {
  if (elp_debug >= 2) {
   pr_debug("%s: failed to transmit packet\n", dev->name);
  }
  spin_unlock_irqrestore(&adapter->lock, flags);
  return NETDEV_TX_BUSY;
 }
 if (elp_debug >= 3)
  pr_debug("%s: packet of length %d sent\n", dev->name, (int) skb->len);




 dev->trans_start = jiffies;

 prime_rx(dev);
 spin_unlock_irqrestore(&adapter->lock, flags);
 netif_start_queue(dev);
 return NETDEV_TX_OK;
}
