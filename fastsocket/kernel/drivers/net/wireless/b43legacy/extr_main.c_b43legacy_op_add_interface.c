
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int addr; int type; } ;
struct ieee80211_hw {int dummy; } ;
struct b43legacy_wldev {int dummy; } ;
struct b43legacy_wl {int operating; int mutex; int irq_lock; int mac_addr; int if_type; struct ieee80211_vif* vif; struct b43legacy_wldev* current_dev; } ;


 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_STATION ;
 int NL80211_IFTYPE_WDS ;
 int b43legacy_adjust_opmode (struct b43legacy_wldev*) ;
 int b43legacy_set_pretbtt (struct b43legacy_wldev*) ;
 int b43legacy_set_synth_pu_delay (struct b43legacy_wldev*,int ) ;
 int b43legacy_upload_card_macaddress (struct b43legacy_wldev*) ;
 int b43legacydbg (struct b43legacy_wl*,char*,int ) ;
 struct b43legacy_wl* hw_to_b43legacy_wl (struct ieee80211_hw*) ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int b43legacy_op_add_interface(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif)
{
 struct b43legacy_wl *wl = hw_to_b43legacy_wl(hw);
 struct b43legacy_wldev *dev;
 unsigned long flags;
 int err = -EOPNOTSUPP;



 if (vif->type != NL80211_IFTYPE_AP &&
     vif->type != NL80211_IFTYPE_STATION &&
     vif->type != NL80211_IFTYPE_WDS &&
     vif->type != NL80211_IFTYPE_ADHOC)
  return -EOPNOTSUPP;

 mutex_lock(&wl->mutex);
 if (wl->operating)
  goto out_mutex_unlock;

 b43legacydbg(wl, "Adding Interface type %d\n", vif->type);

 dev = wl->current_dev;
 wl->operating = 1;
 wl->vif = vif;
 wl->if_type = vif->type;
 memcpy(wl->mac_addr, vif->addr, ETH_ALEN);

 spin_lock_irqsave(&wl->irq_lock, flags);
 b43legacy_adjust_opmode(dev);
 b43legacy_set_pretbtt(dev);
 b43legacy_set_synth_pu_delay(dev, 0);
 b43legacy_upload_card_macaddress(dev);
 spin_unlock_irqrestore(&wl->irq_lock, flags);

 err = 0;
 out_mutex_unlock:
 mutex_unlock(&wl->mutex);

 return err;
}
