
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ath_common {int crypt_caps; int keymax; int keymap; } ;


 int ATH_CRYPT_CAP_MIC_COMBINED ;
 int IEEE80211_WEP_NKID ;
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ;
 int ath_reserve_key_cache_slot_tkip (struct ath_common*) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static int ath_reserve_key_cache_slot(struct ath_common *common,
          u32 cipher)
{
 int i;

 if (cipher == WLAN_CIPHER_SUITE_TKIP)
  return ath_reserve_key_cache_slot_tkip(common);


 if (!(common->crypt_caps & ATH_CRYPT_CAP_MIC_COMBINED)) {
  for (i = IEEE80211_WEP_NKID; i < common->keymax / 4; i++) {
   if (!test_bit(i, common->keymap) &&
       (test_bit(i + 32, common->keymap) ||
        test_bit(i + 64, common->keymap) ||
        test_bit(i + 64 + 32, common->keymap)))
    return i;
   if (!test_bit(i + 32, common->keymap) &&
       (test_bit(i, common->keymap) ||
        test_bit(i + 64, common->keymap) ||
        test_bit(i + 64 + 32, common->keymap)))
    return i + 32;
   if (!test_bit(i + 64, common->keymap) &&
       (test_bit(i , common->keymap) ||
        test_bit(i + 32, common->keymap) ||
        test_bit(i + 64 + 32, common->keymap)))
    return i + 64;
   if (!test_bit(i + 64 + 32, common->keymap) &&
       (test_bit(i, common->keymap) ||
        test_bit(i + 32, common->keymap) ||
        test_bit(i + 64, common->keymap)))
    return i + 64 + 32;
  }
 } else {
  for (i = IEEE80211_WEP_NKID; i < common->keymax / 2; i++) {
   if (!test_bit(i, common->keymap) &&
       test_bit(i + 64, common->keymap))
    return i;
   if (test_bit(i, common->keymap) &&
       !test_bit(i + 64, common->keymap))
    return i + 64;
  }
 }


 for (i = IEEE80211_WEP_NKID; i < common->keymax; i++) {



  if (i >= 64 && i < 64 + IEEE80211_WEP_NKID)
   continue;
  if (!(common->crypt_caps & ATH_CRYPT_CAP_MIC_COMBINED)) {
   if (i >= 32 && i < 32 + IEEE80211_WEP_NKID)
    continue;
   if (i >= 64 + 32 && i < 64 + 32 + IEEE80211_WEP_NKID)
    continue;
  }

  if (!test_bit(i, common->keymap))
   return i;
 }


 return -1;
}
