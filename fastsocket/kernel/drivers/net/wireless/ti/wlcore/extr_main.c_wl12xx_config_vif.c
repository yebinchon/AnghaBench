
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl12xx_vif {scalar_t__ power_level; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_conf {scalar_t__ power_level; } ;


 int wl1271_acx_tx_power (struct wl1271*,struct wl12xx_vif*,scalar_t__) ;

__attribute__((used)) static int wl12xx_config_vif(struct wl1271 *wl, struct wl12xx_vif *wlvif,
        struct ieee80211_conf *conf, u32 changed)
{
 int ret;

 if (conf->power_level != wlvif->power_level) {
  ret = wl1271_acx_tx_power(wl, wlvif, conf->power_level);
  if (ret < 0)
   return ret;

  wlvif->power_level = conf->power_level;
 }

 return 0;
}
