
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int mutex; int mac_addr; int hw; int bss_type; struct ieee80211_vif* vif; } ;
struct ieee80211_vif {int driver_flags; int type; int addr; } ;
struct ieee80211_hw {struct wl1251* priv; } ;


 int BSS_TYPE_IBSS ;
 int BSS_TYPE_STA_BSS ;
 int DEBUG_MAC80211 ;
 int EBUSY ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int IEEE80211_VIF_BEACON_FILTER ;
 int IEEE80211_VIF_SUPPORTS_CQM_RSSI ;


 int SET_IEEE80211_PERM_ADDR (int ,int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wl1251_acx_station_id (struct wl1251*) ;
 int wl1251_debug (int ,char*,int,int ) ;

__attribute__((used)) static int wl1251_op_add_interface(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif)
{
 struct wl1251 *wl = hw->priv;
 int ret = 0;

 vif->driver_flags |= IEEE80211_VIF_BEACON_FILTER |
        IEEE80211_VIF_SUPPORTS_CQM_RSSI;

 wl1251_debug(DEBUG_MAC80211, "mac80211 add interface type %d mac %pM",
       vif->type, vif->addr);

 mutex_lock(&wl->mutex);
 if (wl->vif) {
  ret = -EBUSY;
  goto out;
 }

 wl->vif = vif;

 switch (vif->type) {
 case 128:
  wl->bss_type = BSS_TYPE_STA_BSS;
  break;
 case 129:
  wl->bss_type = BSS_TYPE_IBSS;
  break;
 default:
  ret = -EOPNOTSUPP;
  goto out;
 }

 if (memcmp(wl->mac_addr, vif->addr, ETH_ALEN)) {
  memcpy(wl->mac_addr, vif->addr, ETH_ALEN);
  SET_IEEE80211_PERM_ADDR(wl->hw, wl->mac_addr);
  ret = wl1251_acx_station_id(wl);
  if (ret < 0)
   goto out;
 }

out:
 mutex_unlock(&wl->mutex);
 return ret;
}
