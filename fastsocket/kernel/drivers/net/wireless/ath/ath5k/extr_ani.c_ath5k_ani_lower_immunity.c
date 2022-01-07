
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {scalar_t__ opmode; int ah_beacon_rssi_avg; } ;
struct ath5k_ani_state {scalar_t__ firstep_level; scalar_t__ spur_level; scalar_t__ noise_imm_level; int ofdm_weak_sig; } ;


 int ATH5K_ANI_RSSI_THR_HIGH ;
 int ATH5K_ANI_RSSI_THR_LOW ;
 int ATH5K_DBG_UNLIMIT (struct ath5k_hw*,int ,char*) ;
 int ATH5K_DEBUG_ANI ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int ath5k_ani_set_firstep_level (struct ath5k_hw*,scalar_t__) ;
 int ath5k_ani_set_noise_immunity_level (struct ath5k_hw*,scalar_t__) ;
 int ath5k_ani_set_ofdm_weak_signal_detection (struct ath5k_hw*,int) ;
 int ath5k_ani_set_spur_immunity_level (struct ath5k_hw*,scalar_t__) ;
 int ewma_read (int *) ;

__attribute__((used)) static void
ath5k_ani_lower_immunity(struct ath5k_hw *ah, struct ath5k_ani_state *as)
{
 int rssi = ewma_read(&ah->ah_beacon_rssi_avg);

 ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_ANI, "lower immunity");

 if (ah->opmode == NL80211_IFTYPE_AP) {

  if (as->firstep_level > 0) {
   ath5k_ani_set_firstep_level(ah, as->firstep_level - 1);
   return;
  }
 } else {

  if (rssi > ATH5K_ANI_RSSI_THR_HIGH) {



  } else if (rssi > ATH5K_ANI_RSSI_THR_LOW) {


   if (!as->ofdm_weak_sig) {
    ath5k_ani_set_ofdm_weak_signal_detection(ah,
          1);
    return;
   }
   if (as->firstep_level > 0) {
    ath5k_ani_set_firstep_level(ah,
       as->firstep_level - 1);
    return;
   }
  } else {

   if (as->firstep_level > 0) {
    ath5k_ani_set_firstep_level(ah,
       as->firstep_level - 1);
    return;
   }
  }
 }


 if (as->spur_level > 0) {
  ath5k_ani_set_spur_immunity_level(ah, as->spur_level - 1);
  return;
 }


 if (as->noise_imm_level > 0) {
  ath5k_ani_set_noise_immunity_level(ah, as->noise_imm_level - 1);
  return;
 }
}
