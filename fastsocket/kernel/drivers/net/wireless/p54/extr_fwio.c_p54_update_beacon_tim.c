
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct p54_tim {int count; int * entry; } ;
struct p54_common {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int P54_CONTROL_TYPE_TIM ;
 int P54_HDR_FLAG_CONTROL_OPSET ;
 int cpu_to_le16 (int) ;
 struct sk_buff* p54_alloc_skb (struct p54_common*,int ,int,int ,int ) ;
 int p54_tx (struct p54_common*,struct sk_buff*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

int p54_update_beacon_tim(struct p54_common *priv, u16 aid, bool set)
{
 struct sk_buff *skb;
 struct p54_tim *tim;

 skb = p54_alloc_skb(priv, P54_HDR_FLAG_CONTROL_OPSET, sizeof(*tim),
       P54_CONTROL_TYPE_TIM, GFP_ATOMIC);
 if (unlikely(!skb))
  return -ENOMEM;

 tim = (struct p54_tim *) skb_put(skb, sizeof(*tim));
 tim->count = 1;
 tim->entry[0] = cpu_to_le16(set ? (aid | 0x8000) : aid);
 p54_tx(priv, skb);
 return 0;
}
