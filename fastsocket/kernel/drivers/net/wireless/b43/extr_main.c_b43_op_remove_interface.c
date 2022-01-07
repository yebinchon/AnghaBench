
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int type; } ;
struct ieee80211_hw {int dummy; } ;
struct b43_wldev {int dummy; } ;
struct b43_wl {int operating; int mutex; int mac_addr; struct ieee80211_vif* vif; struct b43_wldev* current_dev; } ;


 int B43_WARN_ON (int) ;
 int ETH_ALEN ;
 int b43_adjust_opmode (struct b43_wldev*) ;
 int b43_upload_card_macaddress (struct b43_wldev*) ;
 int b43dbg (struct b43_wl*,char*,int ) ;
 struct b43_wl* hw_to_b43_wl (struct ieee80211_hw*) ;
 int memset (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void b43_op_remove_interface(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif)
{
 struct b43_wl *wl = hw_to_b43_wl(hw);
 struct b43_wldev *dev = wl->current_dev;

 b43dbg(wl, "Removing Interface type %d\n", vif->type);

 mutex_lock(&wl->mutex);

 B43_WARN_ON(!wl->operating);
 B43_WARN_ON(wl->vif != vif);
 wl->vif = ((void*)0);

 wl->operating = 0;

 b43_adjust_opmode(dev);
 memset(wl->mac_addr, 0, ETH_ALEN);
 b43_upload_card_macaddress(dev);

 mutex_unlock(&wl->mutex);
}
