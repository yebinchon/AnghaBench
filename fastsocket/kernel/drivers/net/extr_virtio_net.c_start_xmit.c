
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int svq; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dev; } ;
typedef int netdev_tx_t ;


 int MAX_SKB_FRAGS ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int dev_warn (int *,char*) ;
 scalar_t__ free_old_xmit_skbs (struct virtnet_info*) ;
 struct virtnet_info* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int nf_reset (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int virtqueue_disable_cb (int ) ;
 int virtqueue_enable_cb (int ) ;
 int virtqueue_enable_cb_delayed (int ) ;
 int virtqueue_kick (int ) ;
 int xmit_skb (struct virtnet_info*,struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct virtnet_info *vi = netdev_priv(dev);
 int capacity;

again:

 free_old_xmit_skbs(vi);


 capacity = xmit_skb(vi, skb);


 if (unlikely(capacity < 0)) {
  netif_stop_queue(dev);
  dev_warn(&dev->dev, "Unexpected full queue\n");
  if (unlikely(!virtqueue_enable_cb(vi->svq))) {
   virtqueue_disable_cb(vi->svq);
   netif_start_queue(dev);
   goto again;
  }
  return NETDEV_TX_BUSY;
 }
 virtqueue_kick(vi->svq);


 skb_orphan(skb);
 nf_reset(skb);



 if (capacity < 2+MAX_SKB_FRAGS) {
  netif_stop_queue(dev);
  if (unlikely(!virtqueue_enable_cb_delayed(vi->svq))) {

   capacity += free_old_xmit_skbs(vi);
   if (capacity >= 2+MAX_SKB_FRAGS) {
    netif_start_queue(dev);
    virtqueue_disable_cb(vi->svq);
   }
  }
 }

 return NETDEV_TX_OK;
}
