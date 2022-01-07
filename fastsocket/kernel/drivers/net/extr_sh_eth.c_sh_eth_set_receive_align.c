
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int SH2_SH3_SKB_RX_ALIGN ;
 int skb_reserve (struct sk_buff*,int ) ;

__attribute__((used)) static void sh_eth_set_receive_align(struct sk_buff *skb)
{
 skb_reserve(skb, SH2_SH3_SKB_RX_ALIGN);
}
