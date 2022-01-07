
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct ath5k_eeprom_info {int* ee_noise_floor_thr; } ;
struct TYPE_2__ {struct ath5k_eeprom_info cap_eeprom; } ;
struct ath5k_hw {int ah_noise_floor; int ah_cal_mask; int ah_current_channel; TYPE_1__ ah_capabilities; } ;
typedef int s16 ;


 int AR5K_CALIBRATION_NF ;
 int AR5K_PHY_AGCCTL ;
 int AR5K_PHY_AGCCTL_NF ;
 int AR5K_PHY_AGCCTL_NF_EN ;
 int AR5K_PHY_AGCCTL_NF_NOUPDATE ;
 int AR5K_PHY_NF ;
 int AR5K_PHY_NF_M ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int) ;
 int AR5K_REG_MASKED_BITS (struct ath5k_hw*,int ,int,int) ;
 int AR5K_TUNE_CCA_MAX_GOOD_VALUE ;
 int ATH5K_DBG (struct ath5k_hw*,int ,char*,...) ;
 int ATH5K_DEBUG_CALIBRATE ;
 size_t ath5k_eeprom_mode_from_channel (struct ath5k_hw*,int ) ;
 int ath5k_hw_get_median_noise_floor (struct ath5k_hw*) ;
 int ath5k_hw_read_measured_noise_floor (struct ath5k_hw*) ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;
 int ath5k_hw_register_timeout (struct ath5k_hw*,int ,int,int ,int) ;
 int ath5k_hw_update_nfcal_hist (struct ath5k_hw*,int) ;

void
ath5k_hw_update_noise_floor(struct ath5k_hw *ah)
{
 struct ath5k_eeprom_info *ee = &ah->ah_capabilities.cap_eeprom;
 u32 val;
 s16 nf, threshold;
 u8 ee_mode;


 if (ath5k_hw_reg_read(ah, AR5K_PHY_AGCCTL) & AR5K_PHY_AGCCTL_NF) {
  ATH5K_DBG(ah, ATH5K_DEBUG_CALIBRATE,
   "NF did not complete in calibration window\n");

  return;
 }

 ah->ah_cal_mask |= AR5K_CALIBRATION_NF;

 ee_mode = ath5k_eeprom_mode_from_channel(ah, ah->ah_current_channel);


 nf = ath5k_hw_read_measured_noise_floor(ah);
 threshold = ee->ee_noise_floor_thr[ee_mode];

 if (nf > threshold) {
  ATH5K_DBG(ah, ATH5K_DEBUG_CALIBRATE,
   "noise floor failure detected; "
   "read %d, threshold %d\n",
   nf, threshold);

  nf = AR5K_TUNE_CCA_MAX_GOOD_VALUE;
 }

 ath5k_hw_update_nfcal_hist(ah, nf);
 nf = ath5k_hw_get_median_noise_floor(ah);


 val = ath5k_hw_reg_read(ah, AR5K_PHY_NF) & ~AR5K_PHY_NF_M;
 val |= (nf * 2) & AR5K_PHY_NF_M;
 ath5k_hw_reg_write(ah, val, AR5K_PHY_NF);

 AR5K_REG_MASKED_BITS(ah, AR5K_PHY_AGCCTL, AR5K_PHY_AGCCTL_NF,
  ~(AR5K_PHY_AGCCTL_NF_EN | AR5K_PHY_AGCCTL_NF_NOUPDATE));

 ath5k_hw_register_timeout(ah, AR5K_PHY_AGCCTL, AR5K_PHY_AGCCTL_NF,
  0, 0);







 val = (val & ~AR5K_PHY_NF_M) | ((-50 * 2) & AR5K_PHY_NF_M);
 ath5k_hw_reg_write(ah, val, AR5K_PHY_NF);
 AR5K_REG_ENABLE_BITS(ah, AR5K_PHY_AGCCTL,
  AR5K_PHY_AGCCTL_NF_EN |
  AR5K_PHY_AGCCTL_NF_NOUPDATE |
  AR5K_PHY_AGCCTL_NF);

 ah->ah_noise_floor = nf;

 ah->ah_cal_mask &= ~AR5K_CALIBRATION_NF;

 ATH5K_DBG(ah, ATH5K_DEBUG_CALIBRATE,
  "noise floor calibrated: %d\n", nf);
}
