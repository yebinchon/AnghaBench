
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {struct sk_buff** tx_frames; int hw; int tx_queue; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {int flags; } ;


 int DEBUG_TX ;
 int FW_TX_CMPLT_BLOCK_SIZE ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_REQ_TX_STATUS ;
 int ieee80211_tx_status (int ,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int wl1251_debug (int ,char*,struct sk_buff*) ;

void wl1251_tx_flush(struct wl1251 *wl)
{
 int i;
 struct sk_buff *skb;
 struct ieee80211_tx_info *info;




 while ((skb = skb_dequeue(&wl->tx_queue))) {
  info = IEEE80211_SKB_CB(skb);

  wl1251_debug(DEBUG_TX, "flushing skb 0x%p", skb);

  if (!(info->flags & IEEE80211_TX_CTL_REQ_TX_STATUS))
    continue;

  ieee80211_tx_status(wl->hw, skb);
 }

 for (i = 0; i < FW_TX_CMPLT_BLOCK_SIZE; i++)
  if (wl->tx_frames[i] != ((void*)0)) {
   skb = wl->tx_frames[i];
   info = IEEE80211_SKB_CB(skb);

   if (!(info->flags & IEEE80211_TX_CTL_REQ_TX_STATUS))
    continue;

   ieee80211_tx_status(wl->hw, skb);
   wl->tx_frames[i] = ((void*)0);
  }
}
