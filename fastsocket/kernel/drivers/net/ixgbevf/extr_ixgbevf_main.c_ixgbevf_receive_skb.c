
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vlan; } ;
struct TYPE_4__ {TYPE_1__ upper; } ;
union ixgbe_adv_rx_desc {TYPE_2__ wb; } ;
typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct ixgbevf_q_vector {int napi; struct ixgbevf_adapter* adapter; } ;
struct ixgbevf_adapter {int flags; scalar_t__ vlgrp; } ;


 int IXGBE_FLAG_IN_NETPOLL ;
 int IXGBE_RXD_STAT_VP ;
 int le16_to_cpu (int ) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int netif_rx (struct sk_buff*) ;
 int vlan_gro_receive (int *,scalar_t__,int ,struct sk_buff*) ;

__attribute__((used)) static void ixgbevf_receive_skb(struct ixgbevf_q_vector *q_vector,
    struct sk_buff *skb, u8 status,
    union ixgbe_adv_rx_desc *rx_desc)
{
 struct ixgbevf_adapter *adapter = q_vector->adapter;
 bool is_vlan = (status & IXGBE_RXD_STAT_VP);
 u16 tag = le16_to_cpu(rx_desc->wb.upper.vlan);

 if (!(adapter->flags & IXGBE_FLAG_IN_NETPOLL)) {
  if (adapter->vlgrp && is_vlan)
   vlan_gro_receive(&q_vector->napi,
      adapter->vlgrp,
      tag, skb);
  else
   napi_gro_receive(&q_vector->napi, skb);
 } else
  netif_rx(skb);
}
