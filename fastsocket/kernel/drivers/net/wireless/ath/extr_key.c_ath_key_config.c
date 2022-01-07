
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {int type; int* addr; } ;
struct ieee80211_sta {int* addr; } ;
struct ieee80211_key_conf {int cipher; int keylen; int* key; int flags; int keyidx; } ;
struct ath_keyval {int kv_len; int* kv_val; int kv_type; } ;
struct ath_common {int crypt_caps; int tkip_keymap; int keymap; int ccmp_keymap; } ;
typedef int hk ;


 int ATH_CIPHER_AES_CCM ;
 int ATH_CIPHER_CLR ;
 int ATH_CIPHER_TKIP ;
 int ATH_CIPHER_WEP ;
 int ATH_CRYPT_CAP_MIC_COMBINED ;
 int EIO ;
 int ENOSPC ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;


 scalar_t__ WARN_ON (int) ;




 int ath_hw_set_keycache_entry (struct ath_common*,int,struct ath_keyval*,int const*) ;
 int ath_reserve_key_cache_slot (struct ath_common*,int) ;
 int ath_setkey_tkip (struct ath_common*,int,int*,struct ath_keyval*,int const*,int) ;
 int memcpy (int*,int*,int) ;
 int memset (struct ath_keyval*,int ,int) ;
 int set_bit (int,int ) ;

int ath_key_config(struct ath_common *common,
     struct ieee80211_vif *vif,
     struct ieee80211_sta *sta,
     struct ieee80211_key_conf *key)
{
 struct ath_keyval hk;
 const u8 *mac = ((void*)0);
 u8 gmac[ETH_ALEN];
 int ret = 0;
 int idx;

 memset(&hk, 0, sizeof(hk));

 switch (key->cipher) {
 case 0:
  hk.kv_type = ATH_CIPHER_CLR;
  break;
 case 128:
 case 129:
  hk.kv_type = ATH_CIPHER_WEP;
  break;
 case 130:
  hk.kv_type = ATH_CIPHER_TKIP;
  break;
 case 131:
  hk.kv_type = ATH_CIPHER_AES_CCM;
  break;
 default:
  return -EOPNOTSUPP;
 }

 hk.kv_len = key->keylen;
 if (key->keylen)
  memcpy(hk.kv_val, key->key, key->keylen);

 if (!(key->flags & IEEE80211_KEY_FLAG_PAIRWISE)) {
  switch (vif->type) {
  case 132:
   memcpy(gmac, vif->addr, ETH_ALEN);
   gmac[0] |= 0x01;
   mac = gmac;
   idx = ath_reserve_key_cache_slot(common, key->cipher);
   break;
  case 133:
   if (!sta) {
    idx = key->keyidx;
    break;
   }
   memcpy(gmac, sta->addr, ETH_ALEN);
   gmac[0] |= 0x01;
   mac = gmac;
   idx = ath_reserve_key_cache_slot(common, key->cipher);
   break;
  default:
   idx = key->keyidx;
   break;
  }
 } else if (key->keyidx) {
  if (WARN_ON(!sta))
   return -EOPNOTSUPP;
  mac = sta->addr;

  if (vif->type != 132) {


   idx = key->keyidx;
  } else
   return -EIO;
 } else {
  if (WARN_ON(!sta))
   return -EOPNOTSUPP;
  mac = sta->addr;

  idx = ath_reserve_key_cache_slot(common, key->cipher);
 }

 if (idx < 0)
  return -ENOSPC;

 if (key->cipher == 130)
  ret = ath_setkey_tkip(common, idx, key->key, &hk, mac,
          vif->type == 132);
 else
  ret = ath_hw_set_keycache_entry(common, idx, &hk, mac);

 if (!ret)
  return -EIO;

 set_bit(idx, common->keymap);
 if (key->cipher == 131)
  set_bit(idx, common->ccmp_keymap);

 if (key->cipher == 130) {
  set_bit(idx + 64, common->keymap);
  set_bit(idx, common->tkip_keymap);
  set_bit(idx + 64, common->tkip_keymap);
  if (!(common->crypt_caps & ATH_CRYPT_CAP_MIC_COMBINED)) {
   set_bit(idx + 32, common->keymap);
   set_bit(idx + 64 + 32, common->keymap);
   set_bit(idx + 32, common->tkip_keymap);
   set_bit(idx + 64 + 32, common->tkip_keymap);
  }
 }

 return idx;
}
