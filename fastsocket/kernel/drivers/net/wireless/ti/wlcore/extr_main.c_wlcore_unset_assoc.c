
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int klv_template_id; } ;
struct wl12xx_vif {scalar_t__ bss_type; TYPE_1__ sta; int channel_switch_work; int flags; int * probereq; scalar_t__ aid; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_vif {int dummy; } ;


 int ACX_KEEP_ALIVE_TPL_INVALID ;
 scalar_t__ BSS_TYPE_STA_BSS ;
 int WLVIF_FLAG_CS_PROGRESS ;
 int WLVIF_FLAG_IBSS_JOINED ;
 int WLVIF_FLAG_STA_ASSOCIATED ;
 int cancel_delayed_work (int *) ;
 int dev_kfree_skb (int *) ;
 int ieee80211_chswitch_done (struct ieee80211_vif*,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wl1271_acx_conn_monit_params (struct wl1271*,struct wl12xx_vif*,int) ;
 int wl1271_acx_keep_alive_config (struct wl1271*,struct wl12xx_vif*,int ,int ) ;
 int wl1271_acx_keep_alive_mode (struct wl1271*,struct wl12xx_vif*,int) ;
 int wl12xx_cmd_stop_channel_switch (struct wl1271*,struct wl12xx_vif*) ;
 struct ieee80211_vif* wl12xx_wlvif_to_vif (struct wl12xx_vif*) ;

__attribute__((used)) static int wlcore_unset_assoc(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 int ret;
 bool sta = wlvif->bss_type == BSS_TYPE_STA_BSS;


 if (sta &&
     !test_and_clear_bit(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags))
  return 0;


 if (!sta &&
     test_and_clear_bit(WLVIF_FLAG_IBSS_JOINED, &wlvif->flags))
  return 0;

 if (sta) {

  wlvif->aid = 0;


  dev_kfree_skb(wlvif->probereq);
  wlvif->probereq = ((void*)0);


  ret = wl1271_acx_conn_monit_params(wl, wlvif, 0);
  if (ret < 0)
   return ret;


  ret = wl1271_acx_keep_alive_mode(wl, wlvif, 0);
  if (ret < 0)
   return ret;
 }

 if (test_and_clear_bit(WLVIF_FLAG_CS_PROGRESS, &wlvif->flags)) {
  struct ieee80211_vif *vif = wl12xx_wlvif_to_vif(wlvif);

  wl12xx_cmd_stop_channel_switch(wl, wlvif);
  ieee80211_chswitch_done(vif, 0);
  cancel_delayed_work(&wlvif->channel_switch_work);
 }


 wl1271_acx_keep_alive_config(wl, wlvif,
         wlvif->sta.klv_template_id,
         ACX_KEEP_ALIVE_TPL_INVALID);

 return 0;
}
