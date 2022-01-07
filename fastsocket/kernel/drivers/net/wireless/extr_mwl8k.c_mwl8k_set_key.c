
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwl8k_vif {int is_hw_crypto_enabled; } ;
struct mwl8k_priv {int ap_fw; } ;
struct ieee80211_vif {scalar_t__ type; int * addr; } ;
struct ieee80211_sta {int * addr; } ;
struct ieee80211_key_conf {scalar_t__ cipher; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;


 int EOPNOTSUPP ;
 int MWL8K_UPDATE_ENCRYPTION_TYPE_MIXED ;
 int MWL8K_UPDATE_ENCRYPTION_TYPE_WEP ;
 struct mwl8k_vif* MWL8K_VIF (struct ieee80211_vif*) ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int SET_KEY ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ;
 int mwl8k_cmd_encryption_remove_key (struct ieee80211_hw*,struct ieee80211_vif*,int *,struct ieee80211_key_conf*) ;
 int mwl8k_cmd_encryption_set_key (struct ieee80211_hw*,struct ieee80211_vif*,int *,struct ieee80211_key_conf*) ;
 int mwl8k_cmd_update_encryption_enable (struct ieee80211_hw*,struct ieee80211_vif*,int *,int ) ;

__attribute__((used)) static int mwl8k_set_key(struct ieee80211_hw *hw,
    enum set_key_cmd cmd_param,
    struct ieee80211_vif *vif,
    struct ieee80211_sta *sta,
    struct ieee80211_key_conf *key)
{
 int rc = 0;
 u8 encr_type;
 u8 *addr;
 struct mwl8k_vif *mwl8k_vif = MWL8K_VIF(vif);
 struct mwl8k_priv *priv = hw->priv;

 if (vif->type == NL80211_IFTYPE_STATION && !priv->ap_fw)
  return -EOPNOTSUPP;

 if (sta == ((void*)0))
  addr = vif->addr;
 else
  addr = sta->addr;

 if (cmd_param == SET_KEY) {
  rc = mwl8k_cmd_encryption_set_key(hw, vif, addr, key);
  if (rc)
   goto out;

  if ((key->cipher == WLAN_CIPHER_SUITE_WEP40)
    || (key->cipher == WLAN_CIPHER_SUITE_WEP104))
   encr_type = MWL8K_UPDATE_ENCRYPTION_TYPE_WEP;
  else
   encr_type = MWL8K_UPDATE_ENCRYPTION_TYPE_MIXED;

  rc = mwl8k_cmd_update_encryption_enable(hw, vif, addr,
        encr_type);
  if (rc)
   goto out;

  mwl8k_vif->is_hw_crypto_enabled = 1;

 } else {
  rc = mwl8k_cmd_encryption_remove_key(hw, vif, addr, key);

  if (rc)
   goto out;
 }
out:
 return rc;
}
