
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {TYPE_1__* caldata; } ;
struct TYPE_2__ {int nfcal_pending; } ;


 int AR_PHY_AGC_CONTROL ;
 int AR_PHY_AGC_CONTROL_ENABLE_NF ;
 int AR_PHY_AGC_CONTROL_NF ;
 int AR_PHY_AGC_CONTROL_NO_UPDATE_NF ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;

void ath9k_hw_start_nfcal(struct ath_hw *ah, bool update)
{
 if (ah->caldata)
  ah->caldata->nfcal_pending = 1;

 REG_SET_BIT(ah, AR_PHY_AGC_CONTROL,
      AR_PHY_AGC_CONTROL_ENABLE_NF);

 if (update)
  REG_CLR_BIT(ah, AR_PHY_AGC_CONTROL,
      AR_PHY_AGC_CONTROL_NO_UPDATE_NF);
 else
  REG_SET_BIT(ah, AR_PHY_AGC_CONTROL,
      AR_PHY_AGC_CONTROL_NO_UPDATE_NF);

 REG_SET_BIT(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_NF);
}
