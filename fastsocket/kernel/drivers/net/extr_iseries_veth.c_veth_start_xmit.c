
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_port {int lpar_map; } ;
struct sk_buff {unsigned char* data; } ;
struct net_device {int dummy; } ;
typedef int HvLpIndexMap ;
typedef int HvLpIndex ;


 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct veth_port* netdev_priv (struct net_device*) ;
 int veth_transmit_to_many (struct sk_buff*,int,struct net_device*) ;

__attribute__((used)) static int veth_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 unsigned char *frame = skb->data;
 struct veth_port *port = netdev_priv(dev);
 HvLpIndexMap lpmask;

 if (! (frame[0] & 0x01)) {

  HvLpIndex rlp = frame[5];

  if ( ! ((1 << rlp) & port->lpar_map) ) {
   dev_kfree_skb(skb);
   return NETDEV_TX_OK;
  }

  lpmask = 1 << rlp;
 } else {
  lpmask = port->lpar_map;
 }

 veth_transmit_to_many(skb, lpmask, dev);

 dev_kfree_skb(skb);

 return NETDEV_TX_OK;
}
