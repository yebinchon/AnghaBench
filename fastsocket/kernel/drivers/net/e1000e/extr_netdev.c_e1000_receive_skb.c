
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int protocol; } ;
struct net_device {int dummy; } ;
struct e1000_adapter {int napi; int vlgrp; } ;
typedef int __le16 ;


 int E1000_RXD_STAT_VP ;
 int e1000e_rx_hwtstamp (struct e1000_adapter*,int,struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int le16_to_cpu (int ) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int vlan_gro_receive (int *,int ,int ,struct sk_buff*) ;

__attribute__((used)) static void e1000_receive_skb(struct e1000_adapter *adapter,
         struct net_device *netdev, struct sk_buff *skb,
         u32 staterr, __le16 vlan)
{

 e1000e_rx_hwtstamp(adapter, staterr, skb);

 skb->protocol = eth_type_trans(skb, netdev);

 if (staterr & E1000_RXD_STAT_VP)
  vlan_gro_receive(&adapter->napi, adapter->vlgrp,
     le16_to_cpu(vlan), skb);
 else
  napi_gro_receive(&adapter->napi, skb);
}
