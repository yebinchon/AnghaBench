
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ ip_summed; } ;
struct bnx2x {int dummy; } ;
struct TYPE_4__ {scalar_t__ protocol; } ;
struct TYPE_3__ {scalar_t__ nexthdr; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int ETH_P_IPV6 ;
 scalar_t__ IPPROTO_TCP ;
 int XMIT_CSUM_TCP ;
 int XMIT_CSUM_V4 ;
 int XMIT_CSUM_V6 ;
 int XMIT_GSO_V4 ;
 int XMIT_GSO_V6 ;
 int XMIT_PLAIN ;
 scalar_t__ htons (int ) ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 scalar_t__ skb_is_gso_v6 (struct sk_buff*) ;
 scalar_t__ vlan_get_protocol (struct sk_buff*) ;

__attribute__((used)) static u32 bnx2x_xmit_type(struct bnx2x *bp, struct sk_buff *skb)
{
 u32 rc;

 if (skb->ip_summed != CHECKSUM_PARTIAL)
  rc = XMIT_PLAIN;

 else {
  if (vlan_get_protocol(skb) == htons(ETH_P_IPV6)) {
   rc = XMIT_CSUM_V6;
   if (ipv6_hdr(skb)->nexthdr == IPPROTO_TCP)
    rc |= XMIT_CSUM_TCP;

  } else {
   rc = XMIT_CSUM_V4;
   if (ip_hdr(skb)->protocol == IPPROTO_TCP)
    rc |= XMIT_CSUM_TCP;
  }
 }

 if (skb_is_gso_v6(skb))
  rc |= (XMIT_GSO_V6 | XMIT_CSUM_TCP);
 else if (skb_is_gso(skb))
  rc |= (XMIT_GSO_V4 | XMIT_CSUM_TCP);

 return rc;
}
