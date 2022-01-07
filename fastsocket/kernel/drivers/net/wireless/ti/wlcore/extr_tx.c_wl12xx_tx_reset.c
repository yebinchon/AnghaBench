
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wl1271_tx_hw_descr {int dummy; } ;
struct wl1271 {int num_tx_desc; int quirks; int hw; struct sk_buff** tx_frames; scalar_t__* tx_queue_count; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_8__ {TYPE_3__* rates; } ;
struct TYPE_6__ {TYPE_1__* hw_key; } ;
struct ieee80211_tx_info {TYPE_4__ status; TYPE_2__ control; } ;
struct TYPE_7__ {int idx; scalar_t__ count; } ;
struct TYPE_5__ {scalar_t__ cipher; } ;


 int DEBUG_TX ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int NUM_TX_QUEUES ;
 int WL1271_EXTRA_SPACE_TKIP ;
 int WL12XX_MAX_LINKS ;
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ;
 int WLCORE_QUIRK_TKIP_HEADER_SPACE ;
 int ieee80211_get_hdrlen_from_skb (struct sk_buff*) ;
 int ieee80211_tx_status_ni (int ,struct sk_buff*) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int wl1271_debug (int ,char*,struct sk_buff*) ;
 int wl1271_free_tx_id (struct wl1271*,int) ;
 int wl1271_handle_tx_low_watermark (struct wl1271*) ;
 int wl1271_tx_reset_link_queues (struct wl1271*,int) ;
 scalar_t__ wl1271_tx_total_queue_count (struct wl1271*) ;
 int wl12xx_is_dummy_packet (struct wl1271*,struct sk_buff*) ;

void wl12xx_tx_reset(struct wl1271 *wl)
{
 int i;
 struct sk_buff *skb;
 struct ieee80211_tx_info *info;


 if (wl1271_tx_total_queue_count(wl) != 0) {
  for (i = 0; i < WL12XX_MAX_LINKS; i++)
   wl1271_tx_reset_link_queues(wl, i);

  for (i = 0; i < NUM_TX_QUEUES; i++)
   wl->tx_queue_count[i] = 0;
 }






 wl1271_handle_tx_low_watermark(wl);

 for (i = 0; i < wl->num_tx_desc; i++) {
  if (wl->tx_frames[i] == ((void*)0))
   continue;

  skb = wl->tx_frames[i];
  wl1271_free_tx_id(wl, i);
  wl1271_debug(DEBUG_TX, "freeing skb 0x%p", skb);

  if (!wl12xx_is_dummy_packet(wl, skb)) {




   info = IEEE80211_SKB_CB(skb);
   skb_pull(skb, sizeof(struct wl1271_tx_hw_descr));
   if ((wl->quirks & WLCORE_QUIRK_TKIP_HEADER_SPACE) &&
       info->control.hw_key &&
       info->control.hw_key->cipher ==
       WLAN_CIPHER_SUITE_TKIP) {
    int hdrlen = ieee80211_get_hdrlen_from_skb(skb);
    memmove(skb->data + WL1271_EXTRA_SPACE_TKIP,
     skb->data, hdrlen);
    skb_pull(skb, WL1271_EXTRA_SPACE_TKIP);
   }

   info->status.rates[0].idx = -1;
   info->status.rates[0].count = 0;

   ieee80211_tx_status_ni(wl->hw, skb);
  }
 }
}
