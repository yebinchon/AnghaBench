
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_wq {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct enic {int * wq_lock; struct vnic_wq* wq; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {scalar_t__ gso_size; scalar_t__ nr_frags; } ;


 scalar_t__ ENIC_DESC_MAX_SPLITS ;
 scalar_t__ ENIC_NON_TSO_MAX_DESC ;
 scalar_t__ MAX_SKB_FRAGS ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;
 int enic_queue_wq_skb (struct enic*,struct vnic_wq*,struct sk_buff*) ;
 int netdev_err (struct net_device*,char*) ;
 struct enic* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ vnic_wq_desc_avail (struct vnic_wq*) ;

__attribute__((used)) static netdev_tx_t enic_hard_start_xmit(struct sk_buff *skb,
 struct net_device *netdev)
{
 struct enic *enic = netdev_priv(netdev);
 struct vnic_wq *wq = &enic->wq[0];
 unsigned long flags;

 if (skb->len <= 0) {
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }






 if (skb_shinfo(skb)->gso_size == 0 &&
     skb_shinfo(skb)->nr_frags + 1 > ENIC_NON_TSO_MAX_DESC &&
     skb_linearize(skb)) {
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }

 spin_lock_irqsave(&enic->wq_lock[0], flags);

 if (vnic_wq_desc_avail(wq) <
     skb_shinfo(skb)->nr_frags + ENIC_DESC_MAX_SPLITS) {
  netif_stop_queue(netdev);

  netdev_err(netdev, "BUG! Tx ring full when queue awake!\n");
  spin_unlock_irqrestore(&enic->wq_lock[0], flags);
  return NETDEV_TX_BUSY;
 }

 enic_queue_wq_skb(enic, wq, skb);

 if (vnic_wq_desc_avail(wq) < MAX_SKB_FRAGS + ENIC_DESC_MAX_SPLITS)
  netif_stop_queue(netdev);

 spin_unlock_irqrestore(&enic->wq_lock[0], flags);

 return NETDEV_TX_OK;
}
