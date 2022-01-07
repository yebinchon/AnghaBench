
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct net_device {unsigned int base_addr; int trans_start; int name; } ;
struct el3_private {int window_lock; } ;
typedef int netdev_tx_t ;


 int DEBUG (int,char*,int ,long,int) ;
 scalar_t__ EL3_CMD ;
 scalar_t__ EL3_STATUS ;
 int NETDEV_TX_OK ;
 int SetTxThreshold ;
 scalar_t__ TX_FIFO ;
 scalar_t__ TxFree ;
 int dev_kfree_skb (struct sk_buff*) ;
 int inw (scalar_t__) ;
 int jiffies ;
 struct el3_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int outsl (scalar_t__,int ,int) ;
 int outw (int,scalar_t__) ;
 int pop_tx_status (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static netdev_tx_t el3_start_xmit(struct sk_buff *skb,
     struct net_device *dev)
{
 unsigned int ioaddr = dev->base_addr;
 struct el3_private *lp = netdev_priv(dev);
 unsigned long flags;

 DEBUG(3, "%s: el3_start_xmit(length = %ld) called, "
    "status %4.4x.\n", dev->name, (long)skb->len,
    inw(ioaddr + EL3_STATUS));

 spin_lock_irqsave(&lp->window_lock, flags);
 outw(skb->len, ioaddr + TX_FIFO);
 outw(0, ioaddr + TX_FIFO);
 outsl(ioaddr + TX_FIFO, skb->data, (skb->len+3)>>2);

 dev->trans_start = jiffies;


 if (inw(ioaddr + TxFree) <= 1536) {
  netif_stop_queue(dev);


  outw(SetTxThreshold + (1536>>2), ioaddr + EL3_CMD);
 }

 pop_tx_status(dev);
 spin_unlock_irqrestore(&lp->window_lock, flags);
 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
}
