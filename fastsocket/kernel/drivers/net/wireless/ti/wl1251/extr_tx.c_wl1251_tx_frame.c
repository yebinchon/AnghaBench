
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wl1251 {scalar_t__ default_key; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {TYPE_2__* hw_key; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct TYPE_4__ {scalar_t__ hw_key_idx; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int wl1251_acx_default_key (struct wl1251*,scalar_t__) ;
 int wl1251_tx_fill_hdr (struct wl1251*,struct sk_buff*,struct ieee80211_tx_info*) ;
 int wl1251_tx_path_status (struct wl1251*) ;
 int wl1251_tx_send_packet (struct wl1251*,struct sk_buff*,struct ieee80211_tx_info*) ;
 int wl1251_tx_trigger (struct wl1251*) ;

__attribute__((used)) static int wl1251_tx_frame(struct wl1251 *wl, struct sk_buff *skb)
{
 struct ieee80211_tx_info *info;
 int ret = 0;
 u8 idx;

 info = IEEE80211_SKB_CB(skb);

 if (info->control.hw_key) {
  idx = info->control.hw_key->hw_key_idx;
  if (unlikely(wl->default_key != idx)) {
   ret = wl1251_acx_default_key(wl, idx);
   if (ret < 0)
    return ret;
  }
 }

 ret = wl1251_tx_path_status(wl);
 if (ret < 0)
  return ret;

 ret = wl1251_tx_fill_hdr(wl, skb, info);
 if (ret < 0)
  return ret;

 ret = wl1251_tx_send_packet(wl, skb, info);
 if (ret < 0)
  return ret;

 wl1251_tx_trigger(wl);

 return ret;
}
