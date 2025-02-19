
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_hw {struct brcms_info* priv; } ;
struct brcms_info {TYPE_2__* pub; scalar_t__ wlc; } ;
struct bcma_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ieee_hw; } ;
struct TYPE_3__ {int wiphy; } ;


 struct ieee80211_hw* bcma_get_drvdata (struct bcma_device*) ;
 int bcma_set_drvdata (struct bcma_device*,int *) ;
 int brcms_free (struct brcms_info*) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;
 int wiphy_rfkill_stop_polling (int ) ;

__attribute__((used)) static void brcms_remove(struct bcma_device *pdev)
{
 struct ieee80211_hw *hw = bcma_get_drvdata(pdev);
 struct brcms_info *wl = hw->priv;

 if (wl->wlc) {
  wiphy_rfkill_set_hw_state(wl->pub->ieee_hw->wiphy, 0);
  wiphy_rfkill_stop_polling(wl->pub->ieee_hw->wiphy);
  ieee80211_unregister_hw(hw);
 }

 brcms_free(wl);

 bcma_set_drvdata(pdev, ((void*)0));
 ieee80211_free_hw(hw);
}
