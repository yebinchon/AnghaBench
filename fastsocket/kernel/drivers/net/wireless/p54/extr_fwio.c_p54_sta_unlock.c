
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct p54_sta_unlock {int addr; } ;
struct p54_common {int dummy; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int P54_CONTROL_TYPE_PSM_STA_UNLOCK ;
 int P54_HDR_FLAG_CONTROL_OPSET ;
 int memcpy (int ,int *,int ) ;
 struct sk_buff* p54_alloc_skb (struct p54_common*,int ,int,int ,int ) ;
 int p54_tx (struct p54_common*,struct sk_buff*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

int p54_sta_unlock(struct p54_common *priv, u8 *addr)
{
 struct sk_buff *skb;
 struct p54_sta_unlock *sta;

 skb = p54_alloc_skb(priv, P54_HDR_FLAG_CONTROL_OPSET, sizeof(*sta),
       P54_CONTROL_TYPE_PSM_STA_UNLOCK, GFP_ATOMIC);
 if (unlikely(!skb))
  return -ENOMEM;

 sta = (struct p54_sta_unlock *)skb_put(skb, sizeof(*sta));
 memcpy(sta->addr, addr, ETH_ALEN);
 p54_tx(priv, skb);
 return 0;
}
