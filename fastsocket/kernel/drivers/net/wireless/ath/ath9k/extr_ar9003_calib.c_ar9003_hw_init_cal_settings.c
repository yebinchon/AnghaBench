
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * calData; } ;
struct ath_hw {int supp_cals; int enabled_cals; TYPE_1__ iq_caldata; } ;


 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 int AR_SREV_9340 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9485_OR_LATER (struct ath_hw*) ;
 int IQ_MISMATCH_CAL ;
 int TX_IQ_CAL ;
 int TX_IQ_ON_AGC_CAL ;
 int iq_cal_single_sample ;

__attribute__((used)) static void ar9003_hw_init_cal_settings(struct ath_hw *ah)
{
 ah->iq_caldata.calData = &iq_cal_single_sample;

 if (AR_SREV_9300_20_OR_LATER(ah)) {
  ah->enabled_cals |= TX_IQ_CAL;
  if (AR_SREV_9485_OR_LATER(ah) && !AR_SREV_9340(ah))
   ah->enabled_cals |= TX_IQ_ON_AGC_CAL;
 }

 ah->supp_cals = IQ_MISMATCH_CAL;
}
