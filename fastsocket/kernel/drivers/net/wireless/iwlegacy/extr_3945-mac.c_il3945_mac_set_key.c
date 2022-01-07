
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct il_priv {int mutex; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {int flags; } ;
struct ieee80211_hw {struct il_priv* priv; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;
struct TYPE_2__ {scalar_t__ sw_crypto; } ;



 int D_MAC80211 (char*,...) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 scalar_t__ IL_INVALID_STATION ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;

 int il3945_clear_sta_key_info (struct il_priv*,scalar_t__) ;
 TYPE_1__ il3945_mod_params ;
 int il3945_remove_static_key (struct il_priv*) ;
 int il3945_set_dynamic_key (struct il_priv*,struct ieee80211_key_conf*,scalar_t__) ;
 int il3945_set_static_key (struct il_priv*,struct ieee80211_key_conf*) ;
 int il_is_associated (struct il_priv*) ;
 int il_scan_cancel_timeout (struct il_priv*,int) ;
 scalar_t__ il_sta_id_or_broadcast (struct il_priv*,struct ieee80211_sta*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
il3945_mac_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
     struct ieee80211_vif *vif, struct ieee80211_sta *sta,
     struct ieee80211_key_conf *key)
{
 struct il_priv *il = hw->priv;
 int ret = 0;
 u8 sta_id = IL_INVALID_STATION;
 u8 static_key;

 D_MAC80211("enter\n");

 if (il3945_mod_params.sw_crypto) {
  D_MAC80211("leave - hwcrypto disabled\n");
  return -EOPNOTSUPP;
 }





 if (vif->type == NL80211_IFTYPE_ADHOC &&
     !(key->flags & IEEE80211_KEY_FLAG_PAIRWISE)) {
  D_MAC80211("leave - IBSS RSN\n");
  return -EOPNOTSUPP;
 }

 static_key = !il_is_associated(il);

 if (!static_key) {
  sta_id = il_sta_id_or_broadcast(il, sta);
  if (sta_id == IL_INVALID_STATION) {
   D_MAC80211("leave - station not found\n");
   return -EINVAL;
  }
 }

 mutex_lock(&il->mutex);
 il_scan_cancel_timeout(il, 100);

 switch (cmd) {
 case 128:
  if (static_key)
   ret = il3945_set_static_key(il, key);
  else
   ret = il3945_set_dynamic_key(il, key, sta_id);
  D_MAC80211("enable hwcrypto key\n");
  break;
 case 129:
  if (static_key)
   ret = il3945_remove_static_key(il);
  else
   ret = il3945_clear_sta_key_info(il, sta_id);
  D_MAC80211("disable hwcrypto key\n");
  break;
 default:
  ret = -EINVAL;
 }

 D_MAC80211("leave ret %d\n", ret);
 mutex_unlock(&il->mutex);

 return ret;
}
