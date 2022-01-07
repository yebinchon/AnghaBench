
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;
struct b43_wl {struct ieee80211_hw* hw; } ;
struct b43_bus_dev {int sdev; } ;


 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ssb_set_devtypedata (int ,int *) ;

__attribute__((used)) static void b43_wireless_exit(struct b43_bus_dev *dev, struct b43_wl *wl)
{
 struct ieee80211_hw *hw = wl->hw;

 ssb_set_devtypedata(dev->sdev, ((void*)0));
 ieee80211_free_hw(hw);
}
