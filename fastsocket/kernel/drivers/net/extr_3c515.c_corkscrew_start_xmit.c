
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; struct boom_tx_desc* data; } ;
struct TYPE_2__ {int tx_bytes; int tx_aborted_errors; int tx_fifo_errors; } ;
struct net_device {int base_addr; TYPE_1__ stats; int name; void* trans_start; } ;
struct corkscrew_private {int cur_tx; int tx_full; int dirty_tx; struct sk_buff* tx_skb; scalar_t__ bus_master; int lock; struct boom_tx_desc* tx_ring; struct sk_buff** tx_skbuff; scalar_t__ full_bus_master_tx; } ;
struct boom_tx_desc {int next; int addr; int length; int status; } ;
typedef int netdev_tx_t ;


 int CmdInProgress ;
 scalar_t__ DownListPtr ;
 int DownStall ;
 int DownUnstall ;
 scalar_t__ EL3_CMD ;
 scalar_t__ EL3_STATUS ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int SetTxThreshold ;
 int StartDMADown ;
 scalar_t__ TX_FIFO ;
 int TX_RING_SIZE ;
 int TxEnable ;
 scalar_t__ TxFree ;
 int TxReset ;
 scalar_t__ TxStatus ;
 scalar_t__ Wn7_MasterAddr ;
 scalar_t__ Wn7_MasterLen ;
 int corkscrew_debug ;
 int dev_kfree_skb (struct sk_buff*) ;
 short inb (scalar_t__) ;
 scalar_t__ inl (scalar_t__) ;
 int inw (scalar_t__) ;
 int isa_virt_to_bus (struct boom_tx_desc*) ;
 void* jiffies ;
 struct corkscrew_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int outb (int,scalar_t__) ;
 int outl (int,scalar_t__) ;
 int outsl (scalar_t__,struct boom_tx_desc*,int) ;
 int outw (int,scalar_t__) ;
 int pr_debug (char*,int ,short) ;
 int queued_packet ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static netdev_tx_t corkscrew_start_xmit(struct sk_buff *skb,
     struct net_device *dev)
{
 struct corkscrew_private *vp = netdev_priv(dev);
 int ioaddr = dev->base_addr;



 netif_stop_queue(dev);

 if (vp->full_bus_master_tx) {

  int entry = vp->cur_tx % TX_RING_SIZE;
  struct boom_tx_desc *prev_entry;
  unsigned long flags;
  int i;

  if (vp->tx_full)
   return NETDEV_TX_BUSY;
  if (vp->cur_tx != 0)
   prev_entry = &vp->tx_ring[(vp->cur_tx - 1) % TX_RING_SIZE];
  else
   prev_entry = ((void*)0);
  if (corkscrew_debug > 3)
   pr_debug("%s: Trying to send a packet, Tx index %d.\n",
    dev->name, vp->cur_tx);

  vp->tx_skbuff[entry] = skb;
  vp->tx_ring[entry].next = 0;
  vp->tx_ring[entry].addr = isa_virt_to_bus(skb->data);
  vp->tx_ring[entry].length = skb->len | 0x80000000;
  vp->tx_ring[entry].status = skb->len | 0x80000000;

  spin_lock_irqsave(&vp->lock, flags);
  outw(DownStall, ioaddr + EL3_CMD);

  for (i = 20; i >= 0; i--)
   if ((inw(ioaddr + EL3_STATUS) & CmdInProgress) == 0)
    break;
  if (prev_entry)
   prev_entry->next = isa_virt_to_bus(&vp->tx_ring[entry]);
  if (inl(ioaddr + DownListPtr) == 0) {
   outl(isa_virt_to_bus(&vp->tx_ring[entry]),
        ioaddr + DownListPtr);
   queued_packet++;
  }
  outw(DownUnstall, ioaddr + EL3_CMD);
  spin_unlock_irqrestore(&vp->lock, flags);

  vp->cur_tx++;
  if (vp->cur_tx - vp->dirty_tx > TX_RING_SIZE - 1)
   vp->tx_full = 1;
  else {
   if (prev_entry)
    prev_entry->status &= ~0x80000000;
   netif_wake_queue(dev);
  }
  dev->trans_start = jiffies;
  return NETDEV_TX_OK;
 }

 outl(skb->len, ioaddr + TX_FIFO);
 dev->stats.tx_bytes += skb->len;
 outsl(ioaddr + TX_FIFO, skb->data, (skb->len + 3) >> 2);
 dev_kfree_skb(skb);
 if (inw(ioaddr + TxFree) > 1536) {
  netif_wake_queue(dev);
 } else

  outw(SetTxThreshold + (1536 >> 2), ioaddr + EL3_CMD);


 dev->trans_start = jiffies;


 {
  short tx_status;
  int i = 4;

  while (--i > 0 && (tx_status = inb(ioaddr + TxStatus)) > 0) {
   if (tx_status & 0x3C) {
    if (corkscrew_debug > 2)
     pr_debug("%s: Tx error, status %2.2x.\n",
      dev->name, tx_status);
    if (tx_status & 0x04)
     dev->stats.tx_fifo_errors++;
    if (tx_status & 0x38)
     dev->stats.tx_aborted_errors++;
    if (tx_status & 0x30) {
     int j;
     outw(TxReset, ioaddr + EL3_CMD);
     for (j = 20; j >= 0; j--)
      if (!(inw(ioaddr + EL3_STATUS) & CmdInProgress))
       break;
    }
    outw(TxEnable, ioaddr + EL3_CMD);
   }
   outb(0x00, ioaddr + TxStatus);
  }
 }
 return NETDEV_TX_OK;
}
