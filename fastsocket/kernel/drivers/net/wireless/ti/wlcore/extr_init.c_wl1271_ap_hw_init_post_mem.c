
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int dummy; } ;
struct ieee80211_vif {int dummy; } ;


 int wl1271_ap_init_templates (struct wl1271*,struct ieee80211_vif*) ;

__attribute__((used)) static int wl1271_ap_hw_init_post_mem(struct wl1271 *wl,
          struct ieee80211_vif *vif)
{
 return wl1271_ap_init_templates(wl, vif);
}
