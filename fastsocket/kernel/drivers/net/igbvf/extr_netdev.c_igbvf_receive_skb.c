
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct igbvf_adapter {int flags; int vlgrp; } ;


 int E1000_RXDEXT_STATERR_LB ;
 int E1000_RXD_SPC_VLAN_MASK ;
 int E1000_RXD_STAT_VP ;
 int IGBVF_FLAG_RX_LB_VLAN_BSWAP ;
 int be16_to_cpu (int) ;
 int le16_to_cpu (int) ;
 int netif_receive_skb (struct sk_buff*) ;
 int vlan_hwaccel_receive_skb (struct sk_buff*,int ,int) ;

__attribute__((used)) static void igbvf_receive_skb(struct igbvf_adapter *adapter,
                              struct net_device *netdev,
                              struct sk_buff *skb,
                              u32 status, u16 vlan)
{
 u16 vid;

 if (adapter->vlgrp && (status & E1000_RXD_STAT_VP)) {
  if ((adapter->flags & IGBVF_FLAG_RX_LB_VLAN_BSWAP) &&
      (status & E1000_RXDEXT_STATERR_LB))
   vid = be16_to_cpu(vlan) & E1000_RXD_SPC_VLAN_MASK;
  else
   vid = le16_to_cpu(vlan) & E1000_RXD_SPC_VLAN_MASK;
  vlan_hwaccel_receive_skb(skb, adapter->vlgrp, vid);
 } else
  netif_receive_skb(skb);
}
