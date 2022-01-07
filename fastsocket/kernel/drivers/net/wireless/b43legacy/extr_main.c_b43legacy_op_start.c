
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int wiphy; } ;
struct b43legacy_wldev {int dummy; } ;
struct b43legacy_wl {int beacon0_uploaded; int beacon1_uploaded; int beacon_templates_virgin; int radio_enabled; int mutex; scalar_t__ filter_flags; int mac_addr; int bssid; struct b43legacy_wldev* current_dev; } ;


 scalar_t__ B43legacy_STAT_INITIALIZED ;
 scalar_t__ B43legacy_STAT_STARTED ;
 int ETH_ALEN ;
 scalar_t__ b43legacy_status (struct b43legacy_wldev*) ;
 int b43legacy_wireless_core_exit (struct b43legacy_wldev*) ;
 int b43legacy_wireless_core_init (struct b43legacy_wldev*) ;
 int b43legacy_wireless_core_start (struct b43legacy_wldev*) ;
 struct b43legacy_wl* hw_to_b43legacy_wl (struct ieee80211_hw*) ;
 int memset (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wiphy_rfkill_start_polling (int ) ;

__attribute__((used)) static int b43legacy_op_start(struct ieee80211_hw *hw)
{
 struct b43legacy_wl *wl = hw_to_b43legacy_wl(hw);
 struct b43legacy_wldev *dev = wl->current_dev;
 int did_init = 0;
 int err = 0;




 memset(wl->bssid, 0, ETH_ALEN);
 memset(wl->mac_addr, 0, ETH_ALEN);
 wl->filter_flags = 0;
 wl->beacon0_uploaded = 0;
 wl->beacon1_uploaded = 0;
 wl->beacon_templates_virgin = 1;
 wl->radio_enabled = 1;

 mutex_lock(&wl->mutex);

 if (b43legacy_status(dev) < B43legacy_STAT_INITIALIZED) {
  err = b43legacy_wireless_core_init(dev);
  if (err)
   goto out_mutex_unlock;
  did_init = 1;
 }

 if (b43legacy_status(dev) < B43legacy_STAT_STARTED) {
  err = b43legacy_wireless_core_start(dev);
  if (err) {
   if (did_init)
    b43legacy_wireless_core_exit(dev);
   goto out_mutex_unlock;
  }
 }

 wiphy_rfkill_start_polling(hw->wiphy);

out_mutex_unlock:
 mutex_unlock(&wl->mutex);

 return err;
}
