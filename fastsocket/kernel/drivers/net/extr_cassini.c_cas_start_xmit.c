
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int trans_start; } ;
struct cas {int min_frame_size; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int N_TX_RINGS_MASK ;
 scalar_t__ cas_xmit_tx_ringN (struct cas*,int,struct sk_buff*) ;
 int jiffies ;
 struct cas* netdev_priv (struct net_device*) ;
 scalar_t__ skb_padto (struct sk_buff*,int ) ;

__attribute__((used)) static netdev_tx_t cas_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct cas *cp = netdev_priv(dev);




 static int ring;

 if (skb_padto(skb, cp->min_frame_size))
  return NETDEV_TX_OK;




 if (cas_xmit_tx_ringN(cp, ring++ & N_TX_RINGS_MASK, skb))
  return NETDEV_TX_BUSY;
 dev->trans_start = jiffies;
 return NETDEV_TX_OK;
}
