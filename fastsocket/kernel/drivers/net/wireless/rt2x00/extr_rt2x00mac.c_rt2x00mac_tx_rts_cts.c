
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; int cb; } ;
struct rt2x00_dev {TYPE_3__* hw; } ;
struct TYPE_6__ {int vif; TYPE_1__* rates; int * hw_key; } ;
struct ieee80211_tx_info {TYPE_2__ control; int flags; } ;
struct ieee80211_rts {int dummy; } ;
struct ieee80211_cts {int dummy; } ;
struct data_queue {int dummy; } ;
struct TYPE_7__ {scalar_t__ extra_tx_headroom; } ;
struct TYPE_5__ {int flags; } ;


 int ENOMEM ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_RC_USE_CTS_PROTECT ;
 int IEEE80211_TX_RC_USE_RTS_CTS ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ieee80211_ctstoself_get (TYPE_3__*,int ,scalar_t__,unsigned int,struct ieee80211_tx_info*,struct ieee80211_cts*) ;
 int ieee80211_rts_get (TYPE_3__*,int ,scalar_t__,unsigned int,struct ieee80211_tx_info*,struct ieee80211_rts*) ;
 int memcpy (int ,int ,int) ;
 int rt2x00_warn (struct rt2x00_dev*,char*) ;
 scalar_t__ rt2x00crypto_tx_overhead (struct rt2x00_dev*,struct sk_buff*) ;
 int rt2x00queue_write_tx_frame (struct data_queue*,struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rt2x00mac_tx_rts_cts(struct rt2x00_dev *rt2x00dev,
    struct data_queue *queue,
    struct sk_buff *frag_skb)
{
 struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(frag_skb);
 struct ieee80211_tx_info *rts_info;
 struct sk_buff *skb;
 unsigned int data_length;
 int retval = 0;

 if (tx_info->control.rates[0].flags & IEEE80211_TX_RC_USE_CTS_PROTECT)
  data_length = sizeof(struct ieee80211_cts);
 else
  data_length = sizeof(struct ieee80211_rts);

 skb = dev_alloc_skb(data_length + rt2x00dev->hw->extra_tx_headroom);
 if (unlikely(!skb)) {
  rt2x00_warn(rt2x00dev, "Failed to create RTS/CTS frame\n");
  return -ENOMEM;
 }

 skb_reserve(skb, rt2x00dev->hw->extra_tx_headroom);
 skb_put(skb, data_length);
 memcpy(skb->cb, frag_skb->cb, sizeof(skb->cb));
 rts_info = IEEE80211_SKB_CB(skb);
 rts_info->control.rates[0].flags &= ~IEEE80211_TX_RC_USE_RTS_CTS;
 rts_info->control.rates[0].flags &= ~IEEE80211_TX_RC_USE_CTS_PROTECT;

 if (tx_info->control.rates[0].flags & IEEE80211_TX_RC_USE_CTS_PROTECT)
  rts_info->flags |= IEEE80211_TX_CTL_NO_ACK;
 else
  rts_info->flags &= ~IEEE80211_TX_CTL_NO_ACK;


 rts_info->control.hw_key = ((void*)0);





 data_length += rt2x00crypto_tx_overhead(rt2x00dev, skb);

 if (tx_info->control.rates[0].flags & IEEE80211_TX_RC_USE_CTS_PROTECT)
  ieee80211_ctstoself_get(rt2x00dev->hw, tx_info->control.vif,
     frag_skb->data, data_length, tx_info,
     (struct ieee80211_cts *)(skb->data));
 else
  ieee80211_rts_get(rt2x00dev->hw, tx_info->control.vif,
      frag_skb->data, data_length, tx_info,
      (struct ieee80211_rts *)(skb->data));

 retval = rt2x00queue_write_tx_frame(queue, skb, 1);
 if (retval) {
  dev_kfree_skb_any(skb);
  rt2x00_warn(rt2x00dev, "Failed to send RTS/CTS frame\n");
 }

 return retval;
}
