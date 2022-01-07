
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stir_cb {int thread; int tx_pending; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int SKB_LINEAR_ASSERT (struct sk_buff*) ;
 int WARN_ON (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct stir_cb* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 scalar_t__ unlikely (struct sk_buff*) ;
 int wake_up_process (int ) ;
 struct sk_buff* xchg (int *,struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t stir_hard_xmit(struct sk_buff *skb,
     struct net_device *netdev)
{
 struct stir_cb *stir = netdev_priv(netdev);

 netif_stop_queue(netdev);


 SKB_LINEAR_ASSERT(skb);

 skb = xchg(&stir->tx_pending, skb);
        wake_up_process(stir->thread);


 if (unlikely(skb)) {
  WARN_ON(1);
  dev_kfree_skb(skb);
 }

 return NETDEV_TX_OK;
}
