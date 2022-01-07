
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int wiphy; } ;
struct b43_wldev {int dummy; } ;
struct b43_wl {int radiotap_enabled; int beacon0_uploaded; int beacon1_uploaded; int beacon_templates_virgin; int radio_enabled; int mutex; scalar_t__ filter_flags; int mac_addr; int bssid; struct b43_wldev* current_dev; } ;


 scalar_t__ B43_STAT_INITIALIZED ;
 scalar_t__ B43_STAT_STARTED ;
 int ETH_ALEN ;
 int b43_op_config (struct ieee80211_hw*,int ) ;
 int b43_qos_clear (struct b43_wl*) ;
 scalar_t__ b43_status (struct b43_wldev*) ;
 int b43_wireless_core_exit (struct b43_wldev*) ;
 int b43_wireless_core_init (struct b43_wldev*) ;
 int b43_wireless_core_start (struct b43_wldev*) ;
 struct b43_wl* hw_to_b43_wl (struct ieee80211_hw*) ;
 int memset (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wiphy_rfkill_start_polling (int ) ;

__attribute__((used)) static int b43_op_start(struct ieee80211_hw *hw)
{
 struct b43_wl *wl = hw_to_b43_wl(hw);
 struct b43_wldev *dev = wl->current_dev;
 int did_init = 0;
 int err = 0;




 memset(wl->bssid, 0, ETH_ALEN);
 memset(wl->mac_addr, 0, ETH_ALEN);
 wl->filter_flags = 0;
 wl->radiotap_enabled = 0;
 b43_qos_clear(wl);
 wl->beacon0_uploaded = 0;
 wl->beacon1_uploaded = 0;
 wl->beacon_templates_virgin = 1;
 wl->radio_enabled = 1;

 mutex_lock(&wl->mutex);

 if (b43_status(dev) < B43_STAT_INITIALIZED) {
  err = b43_wireless_core_init(dev);
  if (err)
   goto out_mutex_unlock;
  did_init = 1;
 }

 if (b43_status(dev) < B43_STAT_STARTED) {
  err = b43_wireless_core_start(dev);
  if (err) {
   if (did_init)
    b43_wireless_core_exit(dev);
   goto out_mutex_unlock;
  }
 }


 wiphy_rfkill_start_polling(hw->wiphy);

 out_mutex_unlock:
 mutex_unlock(&wl->mutex);







 if (!err)
  b43_op_config(hw, ~0);

 return err;
}
