
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl8k_priv {int dummy; } ;
struct ieee80211_hw {int wiphy; struct mwl8k_priv* priv; } ;


 int MAX_RESTART_ATTEMPTS ;
 int msleep (int) ;
 int mwl8k_hw_reset (struct mwl8k_priv*) ;
 int mwl8k_load_firmware (struct ieee80211_hw*) ;
 int mwl8k_release_firmware (struct mwl8k_priv*) ;
 int mwl8k_request_firmware (struct mwl8k_priv*,char*,int) ;
 int wiphy_err (int ,char*) ;

__attribute__((used)) static int mwl8k_init_firmware(struct ieee80211_hw *hw, char *fw_image,
          bool nowait)
{
 struct mwl8k_priv *priv = hw->priv;
 int rc;
 int count = MAX_RESTART_ATTEMPTS;

retry:

 mwl8k_hw_reset(priv);


 rc = mwl8k_request_firmware(priv, fw_image, nowait);
 if (rc) {
  wiphy_err(hw->wiphy, "Firmware files not found\n");
  return rc;
 }

 if (nowait)
  return rc;


 rc = mwl8k_load_firmware(hw);
 if (rc)
  wiphy_err(hw->wiphy, "Cannot start firmware\n");


 mwl8k_release_firmware(priv);

 if (rc && count) {



  count--;
  wiphy_err(hw->wiphy, "Trying to reload the firmware again\n");
  msleep(20);
  goto retry;
 }

 return rc;
}
