
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {scalar_t__ bss_type; int encryption_type; int flags; } ;
struct wl1271 {int quirks; } ;


 scalar_t__ BSS_TYPE_IBSS ;
 int KEY_NONE ;
 int WLCORE_QUIRK_START_STA_FAILS ;
 int WLVIF_FLAG_STA_ASSOCIATED ;
 scalar_t__ test_bit (int ,int *) ;
 int wl1271_info (char*) ;
 int wl12xx_cmd_role_start_ibss (struct wl1271*,struct wl12xx_vif*) ;
 int wl12xx_cmd_role_start_sta (struct wl1271*,struct wl12xx_vif*) ;
 int wl12xx_cmd_role_stop_sta (struct wl1271*,struct wl12xx_vif*) ;

__attribute__((used)) static int wlcore_join(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 int ret;
 bool is_ibss = (wlvif->bss_type == BSS_TYPE_IBSS);
 if (test_bit(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags))
  wl1271_info("JOIN while associated.");


 wlvif->encryption_type = KEY_NONE;

 if (is_ibss)
  ret = wl12xx_cmd_role_start_ibss(wl, wlvif);
 else {
  if (wl->quirks & WLCORE_QUIRK_START_STA_FAILS) {







   wl12xx_cmd_role_start_sta(wl, wlvif);
   wl12xx_cmd_role_stop_sta(wl, wlvif);
  }

  ret = wl12xx_cmd_role_start_sta(wl, wlvif);
 }

 return ret;
}
