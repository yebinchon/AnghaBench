
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct wl1271 {int mac80211_registered; int nvs_len; scalar_t__ fuse_oui_addr; scalar_t__ fuse_nic_addr; int hw; scalar_t__ nvs; } ;


 int ieee80211_register_hw (int ) ;
 int wl1271_debugfs_init (struct wl1271*) ;
 int wl1271_error (char*,int) ;
 int wl1271_notice (char*) ;
 int wl12xx_derive_mac_addresses (struct wl1271*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int wl1271_register_hw(struct wl1271 *wl)
{
 int ret;
 u32 oui_addr = 0, nic_addr = 0;

 if (wl->mac80211_registered)
  return 0;

 if (wl->nvs_len >= 12) {




  u8 *nvs_ptr = (u8 *)wl->nvs;

  oui_addr =
   (nvs_ptr[11] << 16) + (nvs_ptr[10] << 8) + nvs_ptr[6];
  nic_addr =
   (nvs_ptr[5] << 16) + (nvs_ptr[4] << 8) + nvs_ptr[3];
 }


 if (oui_addr == 0 && nic_addr == 0) {
  oui_addr = wl->fuse_oui_addr;

  nic_addr = wl->fuse_nic_addr + 1;
 }

 wl12xx_derive_mac_addresses(wl, oui_addr, nic_addr);

 ret = ieee80211_register_hw(wl->hw);
 if (ret < 0) {
  wl1271_error("unable to register mac80211 hw: %d", ret);
  goto out;
 }

 wl->mac80211_registered = 1;

 wl1271_debugfs_init(wl);

 wl1271_notice("loaded");

out:
 return ret;
}
