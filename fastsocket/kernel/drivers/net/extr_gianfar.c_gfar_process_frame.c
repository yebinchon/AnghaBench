
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; scalar_t__ data; } ;
struct rxfcb {int flags; int vlctl; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int kernel_dropped; } ;
struct gfar_private {TYPE_1__ extra_stats; scalar_t__ vlgrp; scalar_t__ rx_csum_enable; } ;


 int NET_RX_DROP ;
 int RXFCB_VLN ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int gfar_rx_checksum (struct sk_buff*,struct rxfcb*) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;
 int vlan_hwaccel_receive_skb (struct sk_buff*,scalar_t__,int ) ;

__attribute__((used)) static int gfar_process_frame(struct net_device *dev, struct sk_buff *skb,
         int amount_pull)
{
 struct gfar_private *priv = netdev_priv(dev);
 struct rxfcb *fcb = ((void*)0);

 int ret;


 fcb = (struct rxfcb *)skb->data;



 if (amount_pull)
  skb_pull(skb, amount_pull);

 if (priv->rx_csum_enable)
  gfar_rx_checksum(skb, fcb);


 skb->protocol = eth_type_trans(skb, dev);


 if (unlikely(priv->vlgrp && (fcb->flags & RXFCB_VLN)))
  ret = vlan_hwaccel_receive_skb(skb, priv->vlgrp, fcb->vlctl);
 else
  ret = netif_receive_skb(skb);

 if (NET_RX_DROP == ret)
  priv->extra_stats.kernel_dropped++;

 return 0;
}
