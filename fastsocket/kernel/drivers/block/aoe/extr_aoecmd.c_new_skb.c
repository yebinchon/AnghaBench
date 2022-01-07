
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
struct sk_buff {int protocol; } ;


 int ETH_P_AOE ;
 int GFP_ATOMIC ;
 scalar_t__ MAX_HEADER ;
 int __constant_htons (int ) ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *
new_skb(ulong len)
{
 struct sk_buff *skb;

 skb = alloc_skb(len + MAX_HEADER, GFP_ATOMIC);
 if (skb) {
  skb_reserve(skb, MAX_HEADER);
  skb_reset_mac_header(skb);
  skb_reset_network_header(skb);
  skb->protocol = __constant_htons(ETH_P_AOE);
  skb_checksum_none_assert(skb);
 }
 return skb;
}
