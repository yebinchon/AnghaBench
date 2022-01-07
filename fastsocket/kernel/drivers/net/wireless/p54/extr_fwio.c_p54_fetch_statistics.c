
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct p54_tx_info {int extra_len; } ;
struct p54_statistics {int dummy; } ;
struct p54_common {int dummy; } ;
struct ieee80211_tx_info {scalar_t__ rate_driver_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int P54_CONTROL_TYPE_STAT_READBACK ;
 int P54_HDR_FLAG_CONTROL ;
 struct sk_buff* p54_alloc_skb (struct p54_common*,int ,int,int ,int ) ;
 int p54_tx (struct p54_common*,struct sk_buff*) ;

int p54_fetch_statistics(struct p54_common *priv)
{
 struct ieee80211_tx_info *txinfo;
 struct p54_tx_info *p54info;
 struct sk_buff *skb;

 skb = p54_alloc_skb(priv, P54_HDR_FLAG_CONTROL,
       sizeof(struct p54_statistics),
       P54_CONTROL_TYPE_STAT_READBACK, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;
 txinfo = IEEE80211_SKB_CB(skb);
 p54info = (void *) txinfo->rate_driver_data;
 p54info->extra_len = sizeof(struct p54_statistics);

 p54_tx(priv, skb);
 return 0;
}
