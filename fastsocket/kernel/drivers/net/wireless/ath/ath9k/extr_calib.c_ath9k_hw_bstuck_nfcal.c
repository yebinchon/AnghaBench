
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int curchan; struct ath9k_hw_cal_data* caldata; } ;
struct ath9k_hw_cal_data {int nfcal_interference; int nfcal_pending; } ;


 int AR_PHY_AGC_CONTROL ;
 int AR_PHY_AGC_CONTROL_NF ;
 int REG_READ (struct ath_hw*,int ) ;
 int ath9k_hw_getnf (struct ath_hw*,int ) ;
 int ath9k_hw_start_nfcal (struct ath_hw*,int) ;
 scalar_t__ unlikely (int) ;

void ath9k_hw_bstuck_nfcal(struct ath_hw *ah)
{
 struct ath9k_hw_cal_data *caldata = ah->caldata;

 if (unlikely(!caldata))
  return;
 if (!caldata->nfcal_pending)
  ath9k_hw_start_nfcal(ah, 1);
 else if (!(REG_READ(ah, AR_PHY_AGC_CONTROL) & AR_PHY_AGC_CONTROL_NF))
  ath9k_hw_getnf(ah, ah->curchan);

 caldata->nfcal_interference = 1;
}
