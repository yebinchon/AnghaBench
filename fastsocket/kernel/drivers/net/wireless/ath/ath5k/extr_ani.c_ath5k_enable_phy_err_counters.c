
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int dummy; } ;


 int AR5K_CCK_FIL_CNT ;
 int AR5K_OFDM_FIL_CNT ;
 int AR5K_PHYERR_CNT1 ;
 int AR5K_PHYERR_CNT1_MASK ;
 int AR5K_PHYERR_CNT2 ;
 int AR5K_PHYERR_CNT2_MASK ;
 scalar_t__ AR5K_PHY_ERR_FIL_CCK ;
 scalar_t__ AR5K_PHY_ERR_FIL_OFDM ;
 scalar_t__ ATH5K_ANI_CCK_TRIG_HIGH ;
 scalar_t__ ATH5K_ANI_OFDM_TRIG_HIGH ;
 scalar_t__ ATH5K_PHYERR_CNT_MAX ;
 int ath5k_hw_reg_write (struct ath5k_hw*,scalar_t__,int ) ;

__attribute__((used)) static void
ath5k_enable_phy_err_counters(struct ath5k_hw *ah)
{
 ath5k_hw_reg_write(ah, ATH5K_PHYERR_CNT_MAX - ATH5K_ANI_OFDM_TRIG_HIGH,
      AR5K_PHYERR_CNT1);
 ath5k_hw_reg_write(ah, ATH5K_PHYERR_CNT_MAX - ATH5K_ANI_CCK_TRIG_HIGH,
      AR5K_PHYERR_CNT2);
 ath5k_hw_reg_write(ah, AR5K_PHY_ERR_FIL_OFDM, AR5K_PHYERR_CNT1_MASK);
 ath5k_hw_reg_write(ah, AR5K_PHY_ERR_FIL_CCK, AR5K_PHYERR_CNT2_MASK);


 ath5k_hw_reg_write(ah, 0, AR5K_OFDM_FIL_CNT);
 ath5k_hw_reg_write(ah, 0, AR5K_CCK_FIL_CNT);
}
