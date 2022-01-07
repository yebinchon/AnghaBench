
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int mac80211_registered; int hw; int mac_addr; } ;


 int SET_IEEE80211_PERM_ADDR (int ,int ) ;
 int ieee80211_register_hw (int ) ;
 int wl1251_error (char*,int) ;
 int wl1251_notice (char*) ;

__attribute__((used)) static int wl1251_register_hw(struct wl1251 *wl)
{
 int ret;

 if (wl->mac80211_registered)
  return 0;

 SET_IEEE80211_PERM_ADDR(wl->hw, wl->mac_addr);

 ret = ieee80211_register_hw(wl->hw);
 if (ret < 0) {
  wl1251_error("unable to register mac80211 hw: %d", ret);
  return ret;
 }

 wl->mac80211_registered = 1;

 wl1251_notice("loaded");

 return 0;
}
