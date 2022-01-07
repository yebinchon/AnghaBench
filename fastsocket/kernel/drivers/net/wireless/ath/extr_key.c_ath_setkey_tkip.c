
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct ath_keyval {int kv_mic; int kv_txmic; } ;
struct ath_common {int crypt_caps; } ;


 int ATH_CRYPT_CAP_MIC_COMBINED ;
 int NL80211_TKIP_DATA_OFFSET_RX_MIC_KEY ;
 int NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY ;
 int ath_err (struct ath_common*,char*) ;
 int ath_hw_set_keycache_entry (struct ath_common*,scalar_t__,struct ath_keyval*,int const*) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static int ath_setkey_tkip(struct ath_common *common, u16 keyix, const u8 *key,
      struct ath_keyval *hk, const u8 *addr,
      bool authenticator)
{
 const u8 *key_rxmic;
 const u8 *key_txmic;

 key_txmic = key + NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY;
 key_rxmic = key + NL80211_TKIP_DATA_OFFSET_RX_MIC_KEY;

 if (addr == ((void*)0)) {





  if (authenticator) {
   memcpy(hk->kv_mic, key_txmic, sizeof(hk->kv_mic));
   memcpy(hk->kv_txmic, key_txmic, sizeof(hk->kv_mic));
  } else {
   memcpy(hk->kv_mic, key_rxmic, sizeof(hk->kv_mic));
   memcpy(hk->kv_txmic, key_rxmic, sizeof(hk->kv_mic));
  }
  return ath_hw_set_keycache_entry(common, keyix, hk, addr);
 }
 if (common->crypt_caps & ATH_CRYPT_CAP_MIC_COMBINED) {

  memcpy(hk->kv_mic, key_rxmic, sizeof(hk->kv_mic));
  memcpy(hk->kv_txmic, key_txmic, sizeof(hk->kv_txmic));
  return ath_hw_set_keycache_entry(common, keyix, hk, addr);
 }




 memcpy(hk->kv_mic, key_txmic, sizeof(hk->kv_mic));
 if (!ath_hw_set_keycache_entry(common, keyix, hk, ((void*)0))) {

  ath_err(common, "Setting TX MIC Key Failed\n");
  return 0;
 }

 memcpy(hk->kv_mic, key_rxmic, sizeof(hk->kv_mic));

 return ath_hw_set_keycache_entry(common, keyix + 32, hk, addr);
}
