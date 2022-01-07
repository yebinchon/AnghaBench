
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct net_device {int trans_start; } ;
struct ixpdev_tx_desc {scalar_t__ pkt_length; int buf_addr; int channel; } ;
struct ixpdev_priv {scalar_t__ tx_queue_entries; int channel; } ;


 int NETDEV_TX_OK ;
 scalar_t__ PAGE_SIZE ;
 int RING_TX_PENDING ;
 int TX_BUF_COUNT ;
 scalar_t__ TX_BUF_COUNT_PER_CHAN ;
 scalar_t__ TX_BUF_DESC_BASE ;
 int dev_kfree_skb (struct sk_buff*) ;
 int ixp2000_reg_write (int ,scalar_t__) ;
 int jiffies ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct ixpdev_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phys_to_virt (int ) ;
 int skb_copy_and_csum_dev (struct sk_buff*,int ) ;
 struct ixpdev_tx_desc* tx_desc ;
 int tx_pointer ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ixpdev_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct ixpdev_priv *ip = netdev_priv(dev);
 struct ixpdev_tx_desc *desc;
 int entry;
 unsigned long flags;

 if (unlikely(skb->len > PAGE_SIZE)) {

  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }

 entry = tx_pointer;
 tx_pointer = (tx_pointer + 1) % TX_BUF_COUNT;

 desc = tx_desc + entry;
 desc->pkt_length = skb->len;
 desc->channel = ip->channel;

 skb_copy_and_csum_dev(skb, phys_to_virt(desc->buf_addr));
 dev_kfree_skb(skb);

 ixp2000_reg_write(RING_TX_PENDING,
  TX_BUF_DESC_BASE + (entry * sizeof(struct ixpdev_tx_desc)));

 dev->trans_start = jiffies;

 local_irq_save(flags);
 ip->tx_queue_entries++;
 if (ip->tx_queue_entries == TX_BUF_COUNT_PER_CHAN)
  netif_stop_queue(dev);
 local_irq_restore(flags);

 return NETDEV_TX_OK;
}
