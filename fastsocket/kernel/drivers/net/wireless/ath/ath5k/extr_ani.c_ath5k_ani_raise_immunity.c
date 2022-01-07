
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ max_spur_level; } ;
struct ath5k_hw {scalar_t__ opmode; TYPE_2__* ah_current_channel; TYPE_1__ ani_state; int ah_beacon_rssi_avg; } ;
struct ath5k_ani_state {scalar_t__ noise_imm_level; scalar_t__ spur_level; scalar_t__ firstep_level; scalar_t__ ofdm_weak_sig; } ;
struct TYPE_4__ {scalar_t__ band; } ;


 scalar_t__ ATH5K_ANI_MAX_FIRSTEP_LVL ;
 scalar_t__ ATH5K_ANI_MAX_NOISE_IMM_LVL ;
 int ATH5K_ANI_RSSI_THR_HIGH ;
 int ATH5K_ANI_RSSI_THR_LOW ;
 int ATH5K_DBG_UNLIMIT (struct ath5k_hw*,int ,char*,...) ;
 int ATH5K_DEBUG_ANI ;
 scalar_t__ IEEE80211_BAND_2GHZ ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int ath5k_ani_set_firstep_level (struct ath5k_hw*,scalar_t__) ;
 int ath5k_ani_set_noise_immunity_level (struct ath5k_hw*,scalar_t__) ;
 int ath5k_ani_set_ofdm_weak_signal_detection (struct ath5k_hw*,int) ;
 int ath5k_ani_set_spur_immunity_level (struct ath5k_hw*,scalar_t__) ;
 int ewma_read (int *) ;

__attribute__((used)) static void
ath5k_ani_raise_immunity(struct ath5k_hw *ah, struct ath5k_ani_state *as,
    bool ofdm_trigger)
{
 int rssi = ewma_read(&ah->ah_beacon_rssi_avg);

 ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_ANI, "raise immunity (%s)",
  ofdm_trigger ? "ODFM" : "CCK");


 if (as->noise_imm_level < ATH5K_ANI_MAX_NOISE_IMM_LVL) {
  ath5k_ani_set_noise_immunity_level(ah, as->noise_imm_level + 1);
  return;
 }


 if (ofdm_trigger &&
     as->spur_level < ah->ani_state.max_spur_level) {
  ath5k_ani_set_spur_immunity_level(ah, as->spur_level + 1);
  return;
 }


 if (ah->opmode == NL80211_IFTYPE_AP) {
  if (as->firstep_level < ATH5K_ANI_MAX_FIRSTEP_LVL)
   ath5k_ani_set_firstep_level(ah, as->firstep_level + 1);
  return;
 }







 if (rssi > ATH5K_ANI_RSSI_THR_HIGH) {
  ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_ANI,
      "beacon RSSI high");


  if (ofdm_trigger && as->ofdm_weak_sig) {
   ath5k_ani_set_ofdm_weak_signal_detection(ah, 0);
   ath5k_ani_set_spur_immunity_level(ah, 0);
   return;
  }

  if (as->firstep_level < ATH5K_ANI_MAX_FIRSTEP_LVL) {
   ath5k_ani_set_firstep_level(ah, as->firstep_level + 1);
   return;
  }
 } else if (rssi > ATH5K_ANI_RSSI_THR_LOW) {


  ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_ANI,
      "beacon RSSI mid");
  if (ofdm_trigger && !as->ofdm_weak_sig)
   ath5k_ani_set_ofdm_weak_signal_detection(ah, 1);
  if (as->firstep_level < ATH5K_ANI_MAX_FIRSTEP_LVL)
   ath5k_ani_set_firstep_level(ah, as->firstep_level + 1);
  return;
 } else if (ah->ah_current_channel->band == IEEE80211_BAND_2GHZ) {


  ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_ANI,
      "beacon RSSI low, 2GHz");
  if (ofdm_trigger && as->ofdm_weak_sig)
   ath5k_ani_set_ofdm_weak_signal_detection(ah, 0);
  if (as->firstep_level > 0)
   ath5k_ani_set_firstep_level(ah, 0);
  return;
 }






}
