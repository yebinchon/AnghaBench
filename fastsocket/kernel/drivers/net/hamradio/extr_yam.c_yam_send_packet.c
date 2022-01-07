
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yam_port {int send_queue; } ;
struct sk_buff {int dummy; } ;
struct net_device {int trans_start; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int jiffies ;
 struct yam_port* netdev_priv (struct net_device*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t yam_send_packet(struct sk_buff *skb,
      struct net_device *dev)
{
 struct yam_port *yp = netdev_priv(dev);

 skb_queue_tail(&yp->send_queue, skb);
 dev->trans_start = jiffies;
 return NETDEV_TX_OK;
}
