
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ ip_summed; } ;
struct TYPE_2__ {int gso_type; } ;


 scalar_t__ CHECKSUM_NONE ;
 scalar_t__ CHECKSUM_PARTIAL ;
 int GFP_ATOMIC ;
 int SKB_GSO_UDP_TUNNEL ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_unclone (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int handle_offloads(struct sk_buff *skb)
{
 if (skb_is_gso(skb)) {
  int err = skb_unclone(skb, GFP_ATOMIC);
  if (unlikely(err))
   return err;

  skb_shinfo(skb)->gso_type |= SKB_GSO_UDP_TUNNEL;
 } else if (skb->ip_summed != CHECKSUM_PARTIAL)
  skb->ip_summed = CHECKSUM_NONE;

 return 0;
}
