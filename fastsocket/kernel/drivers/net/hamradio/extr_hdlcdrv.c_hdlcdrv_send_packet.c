
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__* data; int len; } ;
struct net_device {int dummy; } ;
struct hdlcdrv_state {struct sk_buff* skb; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_LOCKED ;
 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;
 int do_kiss_params (struct hdlcdrv_state*,scalar_t__*,int ) ;
 struct hdlcdrv_state* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static netdev_tx_t hdlcdrv_send_packet(struct sk_buff *skb,
           struct net_device *dev)
{
 struct hdlcdrv_state *sm = netdev_priv(dev);

 if (skb->data[0] != 0) {
  do_kiss_params(sm, skb->data, skb->len);
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }
 if (sm->skb)
  return NETDEV_TX_LOCKED;
 netif_stop_queue(dev);
 sm->skb = skb;
 return NETDEV_TX_OK;
}
