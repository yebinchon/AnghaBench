
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {int protocol; } ;
struct bnx2x_fastpath {int napi; } ;
struct bnx2x {int vlgrp; } ;
struct TYPE_2__ {scalar_t__ gso_size; } ;


 int BNX2X_ERR (char*,int) ;


 int be16_to_cpu (int ) ;
 int bnx2x_gro_csum (struct bnx2x*,struct sk_buff*,int ) ;
 int bnx2x_gro_ip_csum ;
 int bnx2x_gro_ipv6_csum ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int vlan_gro_receive (int *,int ,scalar_t__,struct sk_buff*) ;

__attribute__((used)) static void bnx2x_gro_receive(struct bnx2x *bp, struct bnx2x_fastpath *fp,
          struct sk_buff *skb, u16 vlan_tci)
{
 if (vlan_tci)
  vlan_gro_receive(&fp->napi, bp->vlgrp, vlan_tci, skb);
 else
  napi_gro_receive(&fp->napi, skb);
}
