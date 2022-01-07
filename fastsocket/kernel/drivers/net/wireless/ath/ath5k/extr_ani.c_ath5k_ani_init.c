
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int max_spur_level; int ani_mode; } ;
struct TYPE_3__ {scalar_t__ cap_has_phyerr_counters; } ;
struct ath5k_hw {scalar_t__ ah_version; scalar_t__ ah_mac_srev; TYPE_2__ ani_state; TYPE_1__ ah_capabilities; } ;
typedef enum ath5k_ani_mode { ____Placeholder_ath5k_ani_mode } ath5k_ani_mode ;


 scalar_t__ AR5K_AR5212 ;
 int AR5K_RX_FILTER_PHYERR ;
 scalar_t__ AR5K_SREV_AR2414 ;
 int ATH5K_ANI_MAX_FIRSTEP_LVL ;
 int ATH5K_ANI_MAX_NOISE_IMM_LVL ;
 int ATH5K_ANI_MODE_AUTO ;
 int ATH5K_ANI_MODE_MANUAL_HIGH ;
 int ATH5K_ANI_MODE_MANUAL_LOW ;
 int ATH5K_ANI_MODE_OFF ;
 int ATH5K_DBG_UNLIMIT (struct ath5k_hw*,int ,char*) ;
 int ATH5K_DEBUG_ANI ;
 int ATH5K_ERR (struct ath5k_hw*,char*,int) ;
 int ath5k_ani_set_cck_weak_signal_detection (struct ath5k_hw*,int) ;
 int ath5k_ani_set_firstep_level (struct ath5k_hw*,int ) ;
 int ath5k_ani_set_noise_immunity_level (struct ath5k_hw*,int ) ;
 int ath5k_ani_set_ofdm_weak_signal_detection (struct ath5k_hw*,int) ;
 int ath5k_ani_set_spur_immunity_level (struct ath5k_hw*,int) ;
 int ath5k_disable_phy_err_counters (struct ath5k_hw*) ;
 int ath5k_enable_phy_err_counters (struct ath5k_hw*) ;
 int ath5k_hw_get_rx_filter (struct ath5k_hw*) ;
 int ath5k_hw_set_rx_filter (struct ath5k_hw*,int) ;
 int memset (TYPE_2__*,int ,int) ;

void
ath5k_ani_init(struct ath5k_hw *ah, enum ath5k_ani_mode mode)
{

 if (ah->ah_version < AR5K_AR5212)
  return;

 if (mode < ATH5K_ANI_MODE_OFF || mode > ATH5K_ANI_MODE_AUTO) {
  ATH5K_ERR(ah, "ANI mode %d out of range", mode);
  return;
 }


 memset(&ah->ani_state, 0, sizeof(ah->ani_state));


 if (ah->ah_mac_srev < AR5K_SREV_AR2414)
  ah->ani_state.max_spur_level = 7;
 else
  ah->ani_state.max_spur_level = 2;


 if (mode == ATH5K_ANI_MODE_OFF) {
  ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_ANI, "ANI off\n");
 } else if (mode == ATH5K_ANI_MODE_MANUAL_LOW) {
  ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_ANI,
   "ANI manual low -> high sensitivity\n");
  ath5k_ani_set_noise_immunity_level(ah, 0);
  ath5k_ani_set_spur_immunity_level(ah, 0);
  ath5k_ani_set_firstep_level(ah, 0);
  ath5k_ani_set_ofdm_weak_signal_detection(ah, 1);
  ath5k_ani_set_cck_weak_signal_detection(ah, 1);
 } else if (mode == ATH5K_ANI_MODE_MANUAL_HIGH) {
  ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_ANI,
   "ANI manual high -> low sensitivity\n");
  ath5k_ani_set_noise_immunity_level(ah,
     ATH5K_ANI_MAX_NOISE_IMM_LVL);
  ath5k_ani_set_spur_immunity_level(ah,
     ah->ani_state.max_spur_level);
  ath5k_ani_set_firstep_level(ah, ATH5K_ANI_MAX_FIRSTEP_LVL);
  ath5k_ani_set_ofdm_weak_signal_detection(ah, 0);
  ath5k_ani_set_cck_weak_signal_detection(ah, 0);
 } else if (mode == ATH5K_ANI_MODE_AUTO) {
  ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_ANI, "ANI auto\n");
  ath5k_ani_set_noise_immunity_level(ah, 0);
  ath5k_ani_set_spur_immunity_level(ah, 0);
  ath5k_ani_set_firstep_level(ah, 0);
  ath5k_ani_set_ofdm_weak_signal_detection(ah, 1);
  ath5k_ani_set_cck_weak_signal_detection(ah, 0);
 }





 if (mode == ATH5K_ANI_MODE_AUTO) {
  if (ah->ah_capabilities.cap_has_phyerr_counters)
   ath5k_enable_phy_err_counters(ah);
  else
   ath5k_hw_set_rx_filter(ah, ath5k_hw_get_rx_filter(ah) |
         AR5K_RX_FILTER_PHYERR);
 } else {
  if (ah->ah_capabilities.cap_has_phyerr_counters)
   ath5k_disable_phy_err_counters(ah);
  else
   ath5k_hw_set_rx_filter(ah, ath5k_hw_get_rx_filter(ah) &
         ~AR5K_RX_FILTER_PHYERR);
 }

 ah->ani_state.ani_mode = mode;
}
