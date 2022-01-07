
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_hw {int wiphy; } ;
struct TYPE_2__ {int radio_on; } ;
struct b43_wldev {int radio_hw_enable; TYPE_1__ phy; } ;
struct b43_wl {int mutex; struct b43_wldev* current_dev; } ;


 scalar_t__ B43_STAT_INITIALIZED ;
 int b43_bus_may_powerdown (struct b43_wldev*) ;
 scalar_t__ b43_bus_powerup (struct b43_wldev*,int ) ;
 int b43_device_disable (struct b43_wldev*,int ) ;
 int b43_device_enable (struct b43_wldev*,int ) ;
 int b43_is_hw_radio_enabled (struct b43_wldev*) ;
 int b43_software_rfkill (struct b43_wldev*,int) ;
 scalar_t__ b43_status (struct b43_wldev*) ;
 int b43info (struct b43_wl*,char*,char*) ;
 struct b43_wl* hw_to_b43_wl (struct ieee80211_hw*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;

void b43_rfkill_poll(struct ieee80211_hw *hw)
{
 struct b43_wl *wl = hw_to_b43_wl(hw);
 struct b43_wldev *dev = wl->current_dev;
 bool enabled;
 bool brought_up = 0;

 mutex_lock(&wl->mutex);
 if (unlikely(b43_status(dev) < B43_STAT_INITIALIZED)) {
  if (b43_bus_powerup(dev, 0)) {
   mutex_unlock(&wl->mutex);
   return;
  }
  b43_device_enable(dev, 0);
  brought_up = 1;
 }

 enabled = b43_is_hw_radio_enabled(dev);

 if (unlikely(enabled != dev->radio_hw_enable)) {
  dev->radio_hw_enable = enabled;
  b43info(wl, "Radio hardware status changed to %s\n",
   enabled ? "ENABLED" : "DISABLED");
  wiphy_rfkill_set_hw_state(hw->wiphy, !enabled);
  if (enabled != dev->phy.radio_on)
   b43_software_rfkill(dev, !enabled);
 }

 if (brought_up) {
  b43_device_disable(dev, 0);
  b43_bus_may_powerdown(dev);
 }

 mutex_unlock(&wl->mutex);
}
