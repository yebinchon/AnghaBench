
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct b43legacy_wl {struct ieee80211_hw* hw; } ;


 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ssb_set_devtypedata (struct ssb_device*,int *) ;

__attribute__((used)) static void b43legacy_wireless_exit(struct ssb_device *dev,
      struct b43legacy_wl *wl)
{
 struct ieee80211_hw *hw = wl->hw;

 ssb_set_devtypedata(dev, ((void*)0));
 ieee80211_free_hw(hw);
}
