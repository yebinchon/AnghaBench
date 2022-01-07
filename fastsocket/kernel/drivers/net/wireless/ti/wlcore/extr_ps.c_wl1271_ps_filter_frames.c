
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct wl1271_link {TYPE_3__* wlvif; int * tx_queue; } ;
struct wl1271 {int* tx_queue_count; int wl_lock; int hw; struct wl1271_link* links; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {TYPE_2__ status; int flags; } ;
struct TYPE_6__ {int* tx_queue_count; } ;
struct TYPE_4__ {int idx; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_STAT_TX_FILTERED ;
 int NUM_TX_QUEUES ;
 scalar_t__ WARN_ON (int ) ;
 int ieee80211_tx_status_ni (int ,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wl1271_handle_tx_low_watermark (struct wl1271*) ;
 int wl12xx_is_dummy_packet (struct wl1271*,struct sk_buff*) ;

__attribute__((used)) static void wl1271_ps_filter_frames(struct wl1271 *wl, u8 hlid)
{
 int i;
 struct sk_buff *skb;
 struct ieee80211_tx_info *info;
 unsigned long flags;
 int filtered[NUM_TX_QUEUES];
 struct wl1271_link *lnk = &wl->links[hlid];


 for (i = 0; i < NUM_TX_QUEUES; i++) {
  filtered[i] = 0;
  while ((skb = skb_dequeue(&lnk->tx_queue[i]))) {
   filtered[i]++;

   if (WARN_ON(wl12xx_is_dummy_packet(wl, skb)))
    continue;

   info = IEEE80211_SKB_CB(skb);
   info->flags |= IEEE80211_TX_STAT_TX_FILTERED;
   info->status.rates[0].idx = -1;
   ieee80211_tx_status_ni(wl->hw, skb);
  }
 }

 spin_lock_irqsave(&wl->wl_lock, flags);
 for (i = 0; i < NUM_TX_QUEUES; i++) {
  wl->tx_queue_count[i] -= filtered[i];
  if (lnk->wlvif)
   lnk->wlvif->tx_queue_count[i] -= filtered[i];
 }
 spin_unlock_irqrestore(&wl->wl_lock, flags);

 wl1271_handle_tx_low_watermark(wl);
}
