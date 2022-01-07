
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {short len; unsigned char* data; } ;
struct net_device {int trans_start; } ;
typedef int netdev_tx_t ;


 short ETH_ZLEN ;
 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;
 int jiffies ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netwave_hw_xmit (unsigned char*,short,struct net_device*) ;

__attribute__((used)) static netdev_tx_t netwave_start_xmit(struct sk_buff *skb,
         struct net_device *dev) {






    netif_stop_queue(dev);

    {
 short length = ETH_ZLEN < skb->len ? skb->len : ETH_ZLEN;
 unsigned char* buf = skb->data;

 if (netwave_hw_xmit( buf, length, dev) == 1) {

     netif_start_queue(dev);
 }
 dev->trans_start = jiffies;
    }
    dev_kfree_skb(skb);

    return NETDEV_TX_OK;
}
