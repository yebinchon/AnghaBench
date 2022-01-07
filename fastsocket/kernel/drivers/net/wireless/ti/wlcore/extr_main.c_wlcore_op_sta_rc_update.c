
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;


 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;
 int wlcore_hw_sta_rc_update (struct wl1271*,struct wl12xx_vif*,struct ieee80211_sta*,int ) ;

__attribute__((used)) static void wlcore_op_sta_rc_update(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct ieee80211_sta *sta,
        u32 changed)
{
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 struct wl1271 *wl = hw->priv;

 wlcore_hw_sta_rc_update(wl, wlvif, sta, changed);
}
