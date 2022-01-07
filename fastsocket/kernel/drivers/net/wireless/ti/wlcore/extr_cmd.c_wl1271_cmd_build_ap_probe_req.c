
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl12xx_vif {size_t band; int role_id; int * bitrate_masks; } ;
struct wl1271 {int hw; } ;
struct sk_buff {int len; int data; } ;
struct ieee80211_vif {int dummy; } ;


 int CMD_TEMPL_CFG_PROBE_REQ_2_4 ;
 int CMD_TEMPL_CFG_PROBE_REQ_5 ;
 int DEBUG_SCAN ;
 size_t IEEE80211_BAND_2GHZ ;
 struct sk_buff* ieee80211_ap_probereq_get (int ,struct ieee80211_vif*) ;
 int wl1271_cmd_template_set (struct wl1271*,int ,int ,int ,int ,int ,int ) ;
 int wl1271_dump (int ,char*,int ,int ) ;
 int wl1271_error (char*) ;
 int wl1271_tx_min_rate_get (struct wl1271*,int ) ;
 struct ieee80211_vif* wl12xx_wlvif_to_vif (struct wl12xx_vif*) ;

struct sk_buff *wl1271_cmd_build_ap_probe_req(struct wl1271 *wl,
           struct wl12xx_vif *wlvif,
           struct sk_buff *skb)
{
 struct ieee80211_vif *vif = wl12xx_wlvif_to_vif(wlvif);
 int ret;
 u32 rate;

 if (!skb)
  skb = ieee80211_ap_probereq_get(wl->hw, vif);
 if (!skb)
  goto out;

 wl1271_dump(DEBUG_SCAN, "AP PROBE REQ: ", skb->data, skb->len);

 rate = wl1271_tx_min_rate_get(wl, wlvif->bitrate_masks[wlvif->band]);
 if (wlvif->band == IEEE80211_BAND_2GHZ)
  ret = wl1271_cmd_template_set(wl, wlvif->role_id,
           CMD_TEMPL_CFG_PROBE_REQ_2_4,
           skb->data, skb->len, 0, rate);
 else
  ret = wl1271_cmd_template_set(wl, wlvif->role_id,
           CMD_TEMPL_CFG_PROBE_REQ_5,
           skb->data, skb->len, 0, rate);

 if (ret < 0)
  wl1271_error("Unable to set ap probe request template.");

out:
 return skb;
}
