
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {int dummy; } ;


 int AH_WAIT_TIMEOUT ;
 int AR_PHY_ADC_CTL ;
 int AR_PHY_ADC_CTL_OFF_PWDADC ;
 int AR_PHY_AGC_CONTROL ;
 int AR_PHY_AGC_CONTROL_CAL ;
 int AR_PHY_AGC_CONTROL_FLTR_CAL ;
 int AR_PHY_CL_CAL_CTL ;
 int AR_PHY_CL_CAL_ENABLE ;
 int AR_PHY_FC_DYN2040_EN ;
 int AR_PHY_PARALLEL_CAL_ENABLE ;
 int AR_PHY_TPCRG1 ;
 int AR_PHY_TPCRG1_PD_CAL_ENABLE ;
 int AR_PHY_TURBO ;
 int CALIBRATE ;
 scalar_t__ IS_CHAN_HT20 (struct ath9k_channel*) ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_wait (struct ath_hw*,int ,int ,int ,int) ;
 int ath_dbg (struct ath_common*,int ,char*,int) ;

__attribute__((used)) static bool ar9285_hw_cl_cal(struct ath_hw *ah, struct ath9k_channel *chan)
{
 struct ath_common *common = ath9k_hw_common(ah);

 REG_SET_BIT(ah, AR_PHY_CL_CAL_CTL, AR_PHY_CL_CAL_ENABLE);
 if (IS_CHAN_HT20(chan)) {
  REG_SET_BIT(ah, AR_PHY_CL_CAL_CTL, AR_PHY_PARALLEL_CAL_ENABLE);
  REG_SET_BIT(ah, AR_PHY_TURBO, AR_PHY_FC_DYN2040_EN);
  REG_CLR_BIT(ah, AR_PHY_AGC_CONTROL,
       AR_PHY_AGC_CONTROL_FLTR_CAL);
  REG_CLR_BIT(ah, AR_PHY_TPCRG1, AR_PHY_TPCRG1_PD_CAL_ENABLE);
  REG_SET_BIT(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_CAL);
  if (!ath9k_hw_wait(ah, AR_PHY_AGC_CONTROL,
      AR_PHY_AGC_CONTROL_CAL, 0, AH_WAIT_TIMEOUT)) {
   ath_dbg(common, CALIBRATE,
    "offset calibration failed to complete in %d ms; noisy environment?\n",
    AH_WAIT_TIMEOUT / 1000);
   return 0;
  }
  REG_CLR_BIT(ah, AR_PHY_TURBO, AR_PHY_FC_DYN2040_EN);
  REG_CLR_BIT(ah, AR_PHY_CL_CAL_CTL, AR_PHY_PARALLEL_CAL_ENABLE);
  REG_CLR_BIT(ah, AR_PHY_CL_CAL_CTL, AR_PHY_CL_CAL_ENABLE);
 }
 REG_CLR_BIT(ah, AR_PHY_ADC_CTL, AR_PHY_ADC_CTL_OFF_PWDADC);
 REG_SET_BIT(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_FLTR_CAL);
 REG_SET_BIT(ah, AR_PHY_TPCRG1, AR_PHY_TPCRG1_PD_CAL_ENABLE);
 REG_SET_BIT(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_CAL);
 if (!ath9k_hw_wait(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_CAL,
     0, AH_WAIT_TIMEOUT)) {
  ath_dbg(common, CALIBRATE,
   "offset calibration failed to complete in %d ms; noisy environment?\n",
   AH_WAIT_TIMEOUT / 1000);
  return 0;
 }

 REG_SET_BIT(ah, AR_PHY_ADC_CTL, AR_PHY_ADC_CTL_OFF_PWDADC);
 REG_CLR_BIT(ah, AR_PHY_CL_CAL_CTL, AR_PHY_CL_CAL_ENABLE);
 REG_CLR_BIT(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_FLTR_CAL);

 return 1;
}
