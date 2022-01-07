
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ath5k_hw {scalar_t__ opmode; int block; int nexttbtt; scalar_t__ bintval; } ;


 int ATH5K_DBG (struct ath5k_hw*,int ,char*,int ,int ,unsigned long long) ;
 int ATH5K_DEBUG_BEACON ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int TSF_TO_TU (scalar_t__) ;
 int ath5k_beacon_send (struct ath5k_hw*) ;
 scalar_t__ ath5k_hw_get_tsf64 (struct ath5k_hw*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ath5k_tasklet_beacon(unsigned long data)
{
 struct ath5k_hw *ah = (struct ath5k_hw *) data;
 if (ah->opmode == NL80211_IFTYPE_ADHOC) {

  u64 tsf = ath5k_hw_get_tsf64(ah);
  ah->nexttbtt += ah->bintval;
  ATH5K_DBG(ah, ATH5K_DEBUG_BEACON,
    "SWBA nexttbtt: %x hw_tu: %x "
    "TSF: %llx\n",
    ah->nexttbtt,
    TSF_TO_TU(tsf),
    (unsigned long long) tsf);
 } else {
  spin_lock(&ah->block);
  ath5k_beacon_send(ah);
  spin_unlock(&ah->block);
 }
}
