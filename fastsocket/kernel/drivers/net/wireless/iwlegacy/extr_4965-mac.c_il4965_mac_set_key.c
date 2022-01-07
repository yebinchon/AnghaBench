
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {int key_mapping_keys; } ;
struct il_priv {int mutex; TYPE_3__ _4965; TYPE_2__* cfg; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {int flags; scalar_t__ cipher; scalar_t__ hw_key_idx; } ;
struct ieee80211_hw {struct il_priv* priv; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;
struct TYPE_5__ {TYPE_1__* mod_params; } ;
struct TYPE_4__ {scalar_t__ sw_crypto; } ;



 int D_MAC80211 (char*) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ HW_KEY_DEFAULT ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 scalar_t__ IL_INVALID_STATION ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;

 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ;
 int il4965_remove_default_wep_key (struct il_priv*,struct ieee80211_key_conf*) ;
 int il4965_remove_dynamic_key (struct il_priv*,struct ieee80211_key_conf*,scalar_t__) ;
 int il4965_set_default_wep_key (struct il_priv*,struct ieee80211_key_conf*) ;
 int il4965_set_dynamic_key (struct il_priv*,struct ieee80211_key_conf*,scalar_t__) ;
 int il_scan_cancel_timeout (struct il_priv*,int) ;
 scalar_t__ il_sta_id_or_broadcast (struct il_priv*,struct ieee80211_sta*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int
il4965_mac_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
     struct ieee80211_vif *vif, struct ieee80211_sta *sta,
     struct ieee80211_key_conf *key)
{
 struct il_priv *il = hw->priv;
 int ret;
 u8 sta_id;
 bool is_default_wep_key = 0;

 D_MAC80211("enter\n");

 if (il->cfg->mod_params->sw_crypto) {
  D_MAC80211("leave - hwcrypto disabled\n");
  return -EOPNOTSUPP;
 }





 if (vif->type == NL80211_IFTYPE_ADHOC &&
     !(key->flags & IEEE80211_KEY_FLAG_PAIRWISE)) {
  D_MAC80211("leave - ad-hoc group key\n");
  return -EOPNOTSUPP;
 }

 sta_id = il_sta_id_or_broadcast(il, sta);
 if (sta_id == IL_INVALID_STATION)
  return -EINVAL;

 mutex_lock(&il->mutex);
 il_scan_cancel_timeout(il, 100);







 if ((key->cipher == WLAN_CIPHER_SUITE_WEP40 ||
      key->cipher == WLAN_CIPHER_SUITE_WEP104) && !sta) {
  if (cmd == 128)
   is_default_wep_key = !il->_4965.key_mapping_keys;
  else
   is_default_wep_key =
       (key->hw_key_idx == HW_KEY_DEFAULT);
 }

 switch (cmd) {
 case 128:
  if (is_default_wep_key)
   ret = il4965_set_default_wep_key(il, key);
  else
   ret = il4965_set_dynamic_key(il, key, sta_id);

  D_MAC80211("enable hwcrypto key\n");
  break;
 case 129:
  if (is_default_wep_key)
   ret = il4965_remove_default_wep_key(il, key);
  else
   ret = il4965_remove_dynamic_key(il, key, sta_id);

  D_MAC80211("disable hwcrypto key\n");
  break;
 default:
  ret = -EINVAL;
 }

 mutex_unlock(&il->mutex);
 D_MAC80211("leave\n");

 return ret;
}
