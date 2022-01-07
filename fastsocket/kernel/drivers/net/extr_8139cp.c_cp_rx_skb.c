
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int protocol; } ;
struct cp_private {int vlgrp; TYPE_2__* dev; } ;
struct cp_desc {int opts2; } ;
struct TYPE_3__ {int rx_bytes; int rx_packets; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int RxVlanTagged ;
 int cpu_to_le32 (int ) ;
 int eth_type_trans (struct sk_buff*,TYPE_2__*) ;
 int le32_to_cpu (int) ;
 int netif_receive_skb (struct sk_buff*) ;
 int swab16 (int) ;
 int vlan_hwaccel_receive_skb (struct sk_buff*,int ,int ) ;

__attribute__((used)) static inline void cp_rx_skb (struct cp_private *cp, struct sk_buff *skb,
         struct cp_desc *desc)
{
 skb->protocol = eth_type_trans (skb, cp->dev);

 cp->dev->stats.rx_packets++;
 cp->dev->stats.rx_bytes += skb->len;







  netif_receive_skb(skb);
}
