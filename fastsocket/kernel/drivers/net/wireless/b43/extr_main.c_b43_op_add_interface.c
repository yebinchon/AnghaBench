
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int bss_conf; int addr; int type; } ;
struct ieee80211_hw {int dummy; } ;
struct b43_wldev {int dummy; } ;
struct b43_wl {int operating; int mutex; int mac_addr; int if_type; struct ieee80211_vif* vif; struct b43_wldev* current_dev; } ;


 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;
 int NL80211_IFTYPE_STATION ;
 int NL80211_IFTYPE_WDS ;
 int b43_adjust_opmode (struct b43_wldev*) ;
 int b43_op_bss_info_changed (struct ieee80211_hw*,struct ieee80211_vif*,int *,int ) ;
 int b43_set_pretbtt (struct b43_wldev*) ;
 int b43_set_synth_pu_delay (struct b43_wldev*,int ) ;
 int b43_upload_card_macaddress (struct b43_wldev*) ;
 int b43dbg (struct b43_wl*,char*,int ) ;
 struct b43_wl* hw_to_b43_wl (struct ieee80211_hw*) ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int b43_op_add_interface(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif)
{
 struct b43_wl *wl = hw_to_b43_wl(hw);
 struct b43_wldev *dev;
 int err = -EOPNOTSUPP;



 if (vif->type != NL80211_IFTYPE_AP &&
     vif->type != NL80211_IFTYPE_MESH_POINT &&
     vif->type != NL80211_IFTYPE_STATION &&
     vif->type != NL80211_IFTYPE_WDS &&
     vif->type != NL80211_IFTYPE_ADHOC)
  return -EOPNOTSUPP;

 mutex_lock(&wl->mutex);
 if (wl->operating)
  goto out_mutex_unlock;

 b43dbg(wl, "Adding Interface type %d\n", vif->type);

 dev = wl->current_dev;
 wl->operating = 1;
 wl->vif = vif;
 wl->if_type = vif->type;
 memcpy(wl->mac_addr, vif->addr, ETH_ALEN);

 b43_adjust_opmode(dev);
 b43_set_pretbtt(dev);
 b43_set_synth_pu_delay(dev, 0);
 b43_upload_card_macaddress(dev);

 err = 0;
 out_mutex_unlock:
 mutex_unlock(&wl->mutex);

 if (err == 0)
  b43_op_bss_info_changed(hw, vif, &vif->bss_conf, ~0);

 return err;
}
