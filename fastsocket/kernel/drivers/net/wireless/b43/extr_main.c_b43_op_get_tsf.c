
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct b43_wldev {int dummy; } ;
struct b43_wl {int mutex; struct b43_wldev* current_dev; } ;


 scalar_t__ B43_STAT_INITIALIZED ;
 scalar_t__ b43_status (struct b43_wldev*) ;
 int b43_tsf_read (struct b43_wldev*,scalar_t__*) ;
 struct b43_wl* hw_to_b43_wl (struct ieee80211_hw*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static u64 b43_op_get_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct b43_wl *wl = hw_to_b43_wl(hw);
 struct b43_wldev *dev;
 u64 tsf;

 mutex_lock(&wl->mutex);
 dev = wl->current_dev;

 if (dev && (b43_status(dev) >= B43_STAT_INITIALIZED))
  b43_tsf_read(dev, &tsf);
 else
  tsf = 0;

 mutex_unlock(&wl->mutex);

 return tsf;
}
