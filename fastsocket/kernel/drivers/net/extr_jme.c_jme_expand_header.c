
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct jme_adapter {int dummy; } ;
struct TYPE_2__ {scalar_t__ gso_size; } ;


 int GFP_ATOMIC ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ skb_header_cloned (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
jme_expand_header(struct jme_adapter *jme, struct sk_buff *skb)
{
 if (unlikely(skb_shinfo(skb)->gso_size &&
   skb_header_cloned(skb) &&
   pskb_expand_head(skb, 0, 0, GFP_ATOMIC))) {
  dev_kfree_skb(skb);
  return -1;
 }

 return 0;
}
