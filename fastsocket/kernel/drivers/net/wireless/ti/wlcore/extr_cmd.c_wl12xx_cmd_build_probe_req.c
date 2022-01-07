
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct wl12xx_vif {int * bitrate_masks; } ;
struct wl1271 {int quirks; int sched_scan_templ_id_5; int sched_scan_templ_id_2_4; int hw; int scan_templ_id_5; int scan_templ_id_2_4; } ;
struct sk_buff {int len; int data; } ;
struct ieee80211_vif {int dummy; } ;


 int DEBUG_SCAN ;
 int ENOMEM ;
 size_t IEEE80211_BAND_2GHZ ;
 int WLCORE_QUIRK_DUAL_PROBE_TMPL ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* ieee80211_probereq_get (int ,struct ieee80211_vif*,size_t const*,size_t,size_t) ;
 int memcpy (int ,size_t const*,size_t) ;
 int skb_put (struct sk_buff*,size_t) ;
 int wl1271_cmd_template_set (struct wl1271*,size_t,int ,int ,int ,int ,int ) ;
 int wl1271_dump (int ,char*,int ,int ) ;
 int wl1271_tx_min_rate_get (struct wl1271*,int ) ;
 struct ieee80211_vif* wl12xx_wlvif_to_vif (struct wl12xx_vif*) ;

int wl12xx_cmd_build_probe_req(struct wl1271 *wl, struct wl12xx_vif *wlvif,
          u8 role_id, u8 band,
          const u8 *ssid, size_t ssid_len,
          const u8 *ie, size_t ie_len, bool sched_scan)
{
 struct ieee80211_vif *vif = wl12xx_wlvif_to_vif(wlvif);
 struct sk_buff *skb;
 int ret;
 u32 rate;
 u16 template_id_2_4 = wl->scan_templ_id_2_4;
 u16 template_id_5 = wl->scan_templ_id_5;

 skb = ieee80211_probereq_get(wl->hw, vif, ssid, ssid_len,
         ie_len);
 if (!skb) {
  ret = -ENOMEM;
  goto out;
 }
 if (ie_len)
  memcpy(skb_put(skb, ie_len), ie, ie_len);

 wl1271_dump(DEBUG_SCAN, "PROBE REQ: ", skb->data, skb->len);

 if (sched_scan &&
     (wl->quirks & WLCORE_QUIRK_DUAL_PROBE_TMPL)) {
  template_id_2_4 = wl->sched_scan_templ_id_2_4;
  template_id_5 = wl->sched_scan_templ_id_5;
 }

 rate = wl1271_tx_min_rate_get(wl, wlvif->bitrate_masks[band]);
 if (band == IEEE80211_BAND_2GHZ)
  ret = wl1271_cmd_template_set(wl, role_id,
           template_id_2_4,
           skb->data, skb->len, 0, rate);
 else
  ret = wl1271_cmd_template_set(wl, role_id,
           template_id_5,
           skb->data, skb->len, 0, rate);

out:
 dev_kfree_skb(skb);
 return ret;
}
