
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct tcphdr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
struct bnx2x {int * vlgrp; } ;
struct TYPE_4__ {int count; } ;
struct TYPE_3__ {int gso_size; int gso_type; } ;


 int ETH_HLEN ;
 scalar_t__ GET_FLAG (int,int ) ;
 TYPE_2__* NAPI_GRO_CB (struct sk_buff*) ;
 int PARSING_FLAGS_OVER_ETHERNET_PROTOCOL ;
 int PARSING_FLAGS_TIME_STAMP_EXIST_FLAG ;
 int PARSING_FLAGS_VLAN ;
 scalar_t__ PRS_FLAG_OVERETH_IPV6 ;
 int SKB_GSO_TCPV4 ;
 int SKB_GSO_TCPV6 ;
 int TPA_TSTAMP_OPT_LEN ;
 int VLAN_HLEN ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void bnx2x_set_gro_params(struct sk_buff *skb, u16 parsing_flags,
     u16 len_on_bd, unsigned int pkt_len,
     u16 num_of_coalesced_segs,
     struct bnx2x *bp)
{



 u16 hdrs_len = ETH_HLEN + sizeof(struct tcphdr);

 if (GET_FLAG(parsing_flags, PARSING_FLAGS_OVER_ETHERNET_PROTOCOL) ==
     PRS_FLAG_OVERETH_IPV6) {
  hdrs_len += sizeof(struct ipv6hdr);
  skb_shinfo(skb)->gso_type = SKB_GSO_TCPV6;
 } else {
  hdrs_len += sizeof(struct iphdr);
  skb_shinfo(skb)->gso_type = SKB_GSO_TCPV4;
 }


 if ((bp->vlgrp == ((void*)0)) && (parsing_flags & PARSING_FLAGS_VLAN))
  hdrs_len += VLAN_HLEN;






 if (parsing_flags & PARSING_FLAGS_TIME_STAMP_EXIST_FLAG)
  hdrs_len += TPA_TSTAMP_OPT_LEN;

 skb_shinfo(skb)->gso_size = len_on_bd - hdrs_len;




 NAPI_GRO_CB(skb)->count = num_of_coalesced_segs;
}
