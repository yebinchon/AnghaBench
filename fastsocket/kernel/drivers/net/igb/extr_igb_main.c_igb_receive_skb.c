
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct igb_q_vector {int napi; struct igb_adapter* adapter; } ;
struct igb_adapter {int vlgrp; } ;


 int napi_gro_receive (int *,struct sk_buff*) ;
 int vlan_gro_receive (int *,int ,int ,struct sk_buff*) ;

__attribute__((used)) static void igb_receive_skb(struct igb_q_vector *q_vector,
                            struct sk_buff *skb,
                            u16 vlan_tag)
{
 struct igb_adapter *adapter = q_vector->adapter;

 if (vlan_tag)
  vlan_gro_receive(&q_vector->napi, adapter->vlgrp,
                   vlan_tag, skb);
 else
  napi_gro_receive(&q_vector->napi, skb);
}
