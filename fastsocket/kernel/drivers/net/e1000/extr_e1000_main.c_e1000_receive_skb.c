
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int protocol; } ;
struct e1000_adapter {int napi; scalar_t__ vlgrp; int netdev; } ;
typedef int __le16 ;


 int E1000_RXD_SPC_VLAN_MASK ;
 int E1000_RXD_STAT_VP ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int le16_to_cpu (int ) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int vlan_gro_receive (int *,scalar_t__,int,struct sk_buff*) ;

__attribute__((used)) static void e1000_receive_skb(struct e1000_adapter *adapter, u8 status,
         __le16 vlan, struct sk_buff *skb)
{
 skb->protocol = eth_type_trans(skb, adapter->netdev);

 if ((unlikely(adapter->vlgrp && (status & E1000_RXD_STAT_VP))))
  vlan_gro_receive(&adapter->napi, adapter->vlgrp,
     le16_to_cpu(vlan) & E1000_RXD_SPC_VLAN_MASK,
     skb);
 else
  napi_gro_receive(&adapter->napi, skb);
}
