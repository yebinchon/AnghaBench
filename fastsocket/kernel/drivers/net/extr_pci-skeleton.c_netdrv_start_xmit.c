
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct netdrv_private {int tx_flag; int dirty_tx; int cur_tx; int * tx_buf; TYPE_1__* tx_info; void* mmio_addr; } ;
struct net_device {int name; int trans_start; } ;
struct TYPE_2__ {scalar_t__ mapping; struct sk_buff* skb; } ;


 int DPRINTK (char*,int ,int ,int,int) ;
 int ETH_ZLEN ;
 int NETDEV_TX_OK ;
 int NETDRV_W32 (scalar_t__,int) ;
 int NUM_TX_DESC ;
 scalar_t__ TxStatus0 ;
 int assert (int) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int jiffies ;
 struct netdrv_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_copy_from_linear_data (struct sk_buff*,int ,int) ;

__attribute__((used)) static int netdrv_start_xmit (struct sk_buff *skb, struct net_device *dev)
{
 struct netdrv_private *tp = netdev_priv(dev);
 void *ioaddr = tp->mmio_addr;
 int entry;


 entry = atomic_read (&tp->cur_tx) % NUM_TX_DESC;

 assert (tp->tx_info[entry].skb == ((void*)0));
 assert (tp->tx_info[entry].mapping == 0);

 tp->tx_info[entry].skb = skb;

 skb_copy_from_linear_data(skb, tp->tx_buf[entry], skb->len);


 NETDRV_W32 (TxStatus0 + (entry * sizeof(u32)),
   tp->tx_flag | (skb->len >= ETH_ZLEN ? skb->len : ETH_ZLEN));

 dev->trans_start = jiffies;
 atomic_inc (&tp->cur_tx);
 if ((atomic_read (&tp->cur_tx) - atomic_read (&tp->dirty_tx)) >= NUM_TX_DESC)
  netif_stop_queue (dev);

 DPRINTK ("%s: Queued Tx packet at %p size %u to slot %d.\n",
   dev->name, skb->data, skb->len, entry);

 return NETDEV_TX_OK;
}
