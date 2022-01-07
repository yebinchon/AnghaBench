
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_bss_conf {scalar_t__ use_short_slot; int basic_rates; int beacon_int; int bssid; } ;
struct b43_wldev {int dummy; } ;
struct b43_wl {int mutex; int bssid; struct ieee80211_vif* vif; struct b43_wldev* current_dev; } ;


 scalar_t__ B43_STAT_INITIALIZED ;
 scalar_t__ B43_STAT_STARTED ;
 int B43_WARN_ON (int) ;
 int BSS_CHANGED_BASIC_RATES ;
 int BSS_CHANGED_BEACON ;
 int BSS_CHANGED_BEACON_INT ;
 int BSS_CHANGED_BSSID ;
 int BSS_CHANGED_ERP_SLOT ;
 int ETH_ALEN ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;
 scalar_t__ b43_is_mode (struct b43_wl*,int ) ;
 int b43_mac_enable (struct b43_wldev*) ;
 int b43_mac_suspend (struct b43_wldev*) ;
 int b43_set_beacon_int (struct b43_wldev*,int ) ;
 int b43_short_slot_timing_disable (struct b43_wldev*) ;
 int b43_short_slot_timing_enable (struct b43_wldev*) ;
 scalar_t__ b43_status (struct b43_wldev*) ;
 int b43_update_basic_rates (struct b43_wldev*,int ) ;
 int b43_update_templates (struct b43_wl*) ;
 int b43_write_mac_bssid_templates (struct b43_wldev*) ;
 struct b43_wl* hw_to_b43_wl (struct ieee80211_hw*) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void b43_op_bss_info_changed(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct ieee80211_bss_conf *conf,
        u32 changed)
{
 struct b43_wl *wl = hw_to_b43_wl(hw);
 struct b43_wldev *dev;

 mutex_lock(&wl->mutex);

 dev = wl->current_dev;
 if (!dev || b43_status(dev) < B43_STAT_STARTED)
  goto out_unlock_mutex;

 B43_WARN_ON(wl->vif != vif);

 if (changed & BSS_CHANGED_BSSID) {
  if (conf->bssid)
   memcpy(wl->bssid, conf->bssid, ETH_ALEN);
  else
   memset(wl->bssid, 0, ETH_ALEN);
 }

 if (b43_status(dev) >= B43_STAT_INITIALIZED) {
  if (changed & BSS_CHANGED_BEACON &&
      (b43_is_mode(wl, NL80211_IFTYPE_AP) ||
       b43_is_mode(wl, NL80211_IFTYPE_MESH_POINT) ||
       b43_is_mode(wl, NL80211_IFTYPE_ADHOC)))
   b43_update_templates(wl);

  if (changed & BSS_CHANGED_BSSID)
   b43_write_mac_bssid_templates(dev);
 }

 b43_mac_suspend(dev);


 if (changed & BSS_CHANGED_BEACON_INT &&
     (b43_is_mode(wl, NL80211_IFTYPE_AP) ||
      b43_is_mode(wl, NL80211_IFTYPE_MESH_POINT) ||
      b43_is_mode(wl, NL80211_IFTYPE_ADHOC)) &&
     conf->beacon_int)
  b43_set_beacon_int(dev, conf->beacon_int);

 if (changed & BSS_CHANGED_BASIC_RATES)
  b43_update_basic_rates(dev, conf->basic_rates);

 if (changed & BSS_CHANGED_ERP_SLOT) {
  if (conf->use_short_slot)
   b43_short_slot_timing_enable(dev);
  else
   b43_short_slot_timing_disable(dev);
 }

 b43_mac_enable(dev);
out_unlock_mutex:
 mutex_unlock(&wl->mutex);
}
