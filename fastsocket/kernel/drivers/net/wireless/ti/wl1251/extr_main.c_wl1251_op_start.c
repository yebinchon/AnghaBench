
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {scalar_t__ state; int mutex; int fw_ver; int chip_id; } ;
struct wiphy {int fw_version; int hw_version; } ;
struct ieee80211_hw {struct wiphy* wiphy; struct wl1251* priv; } ;


 int DEBUG_MAC80211 ;
 int EBUSY ;
 scalar_t__ WL1251_STATE_OFF ;
 scalar_t__ WL1251_STATE_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strncpy (int ,int ,int) ;
 int wl1251_acx_station_id (struct wl1251*) ;
 int wl1251_boot (struct wl1251*) ;
 int wl1251_chip_wakeup (struct wl1251*) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_error (char*,scalar_t__) ;
 int wl1251_hw_init (struct wl1251*) ;
 int wl1251_info (char*,int ) ;
 int wl1251_power_off (struct wl1251*) ;

__attribute__((used)) static int wl1251_op_start(struct ieee80211_hw *hw)
{
 struct wl1251 *wl = hw->priv;
 struct wiphy *wiphy = hw->wiphy;
 int ret = 0;

 wl1251_debug(DEBUG_MAC80211, "mac80211 start");

 mutex_lock(&wl->mutex);

 if (wl->state != WL1251_STATE_OFF) {
  wl1251_error("cannot start because not in off state: %d",
        wl->state);
  ret = -EBUSY;
  goto out;
 }

 ret = wl1251_chip_wakeup(wl);
 if (ret < 0)
  goto out;

 ret = wl1251_boot(wl);
 if (ret < 0)
  goto out;

 ret = wl1251_hw_init(wl);
 if (ret < 0)
  goto out;

 ret = wl1251_acx_station_id(wl);
 if (ret < 0)
  goto out;

 wl->state = WL1251_STATE_ON;

 wl1251_info("firmware booted (%s)", wl->fw_ver);


 wiphy->hw_version = wl->chip_id;
 strncpy(wiphy->fw_version, wl->fw_ver, sizeof(wiphy->fw_version));

out:
 if (ret < 0)
  wl1251_power_off(wl);

 mutex_unlock(&wl->mutex);

 return ret;
}
