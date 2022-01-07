
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_bss_conf {scalar_t__ use_short_slot; int basic_rates; int beacon_int; int bssid; } ;
struct b43legacy_wldev {int irq_mask; } ;
struct b43legacy_wl {int mutex; int irq_lock; int bssid; struct b43legacy_wldev* current_dev; struct ieee80211_vif* vif; } ;


 int B43legacy_MMIO_GEN_IRQ_MASK ;
 scalar_t__ B43legacy_STAT_INITIALIZED ;
 scalar_t__ B43legacy_STAT_STARTED ;
 int B43legacy_WARN_ON (int) ;
 int BSS_CHANGED_BASIC_RATES ;
 int BSS_CHANGED_BEACON ;
 int BSS_CHANGED_BEACON_INT ;
 int BSS_CHANGED_BSSID ;
 int BSS_CHANGED_ERP_SLOT ;
 int ETH_ALEN ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 scalar_t__ b43legacy_is_mode (struct b43legacy_wl*,int ) ;
 int b43legacy_mac_enable (struct b43legacy_wldev*) ;
 int b43legacy_mac_suspend (struct b43legacy_wldev*) ;
 int b43legacy_set_beacon_int (struct b43legacy_wldev*,int ) ;
 int b43legacy_short_slot_timing_disable (struct b43legacy_wldev*) ;
 int b43legacy_short_slot_timing_enable (struct b43legacy_wldev*) ;
 scalar_t__ b43legacy_status (struct b43legacy_wldev*) ;
 int b43legacy_synchronize_irq (struct b43legacy_wldev*) ;
 int b43legacy_update_basic_rates (struct b43legacy_wldev*,int ) ;
 int b43legacy_update_templates (struct b43legacy_wl*) ;
 int b43legacy_write32 (struct b43legacy_wldev*,int ,int ) ;
 int b43legacy_write_mac_bssid_templates (struct b43legacy_wldev*) ;
 struct b43legacy_wl* hw_to_b43legacy_wl (struct ieee80211_hw*) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int mmiowb () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void b43legacy_op_bss_info_changed(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct ieee80211_bss_conf *conf,
        u32 changed)
{
 struct b43legacy_wl *wl = hw_to_b43legacy_wl(hw);
 struct b43legacy_wldev *dev;
 unsigned long flags;

 mutex_lock(&wl->mutex);
 B43legacy_WARN_ON(wl->vif != vif);

 dev = wl->current_dev;




 spin_lock_irqsave(&wl->irq_lock, flags);
 if (b43legacy_status(dev) < B43legacy_STAT_STARTED) {
  spin_unlock_irqrestore(&wl->irq_lock, flags);
  goto out_unlock_mutex;
 }
 b43legacy_write32(dev, B43legacy_MMIO_GEN_IRQ_MASK, 0);

 if (changed & BSS_CHANGED_BSSID) {
  b43legacy_synchronize_irq(dev);

  if (conf->bssid)
   memcpy(wl->bssid, conf->bssid, ETH_ALEN);
  else
   memset(wl->bssid, 0, ETH_ALEN);
 }

 if (b43legacy_status(dev) >= B43legacy_STAT_INITIALIZED) {
  if (changed & BSS_CHANGED_BEACON &&
      (b43legacy_is_mode(wl, NL80211_IFTYPE_AP) ||
       b43legacy_is_mode(wl, NL80211_IFTYPE_ADHOC)))
   b43legacy_update_templates(wl);

  if (changed & BSS_CHANGED_BSSID)
   b43legacy_write_mac_bssid_templates(dev);
 }
 spin_unlock_irqrestore(&wl->irq_lock, flags);

 b43legacy_mac_suspend(dev);

 if (changed & BSS_CHANGED_BEACON_INT &&
     (b43legacy_is_mode(wl, NL80211_IFTYPE_AP) ||
      b43legacy_is_mode(wl, NL80211_IFTYPE_ADHOC)))
  b43legacy_set_beacon_int(dev, conf->beacon_int);

 if (changed & BSS_CHANGED_BASIC_RATES)
  b43legacy_update_basic_rates(dev, conf->basic_rates);

 if (changed & BSS_CHANGED_ERP_SLOT) {
  if (conf->use_short_slot)
   b43legacy_short_slot_timing_enable(dev);
  else
   b43legacy_short_slot_timing_disable(dev);
 }

 b43legacy_mac_enable(dev);

 spin_lock_irqsave(&wl->irq_lock, flags);
 b43legacy_write32(dev, B43legacy_MMIO_GEN_IRQ_MASK, dev->irq_mask);

 mmiowb();
 spin_unlock_irqrestore(&wl->irq_lock, flags);
 out_unlock_mutex:
 mutex_unlock(&wl->mutex);
}
