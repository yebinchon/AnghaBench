
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct net_device {int dummy; } ;
struct channel_data {struct sk_buff* tx_skb; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int cosa_start_tx (struct channel_data*,int ,int ) ;
 struct channel_data* dev_to_chan (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static netdev_tx_t cosa_net_tx(struct sk_buff *skb,
         struct net_device *dev)
{
 struct channel_data *chan = dev_to_chan(dev);

 netif_stop_queue(dev);

 chan->tx_skb = skb;
 cosa_start_tx(chan, skb->data, skb->len);
 return NETDEV_TX_OK;
}
