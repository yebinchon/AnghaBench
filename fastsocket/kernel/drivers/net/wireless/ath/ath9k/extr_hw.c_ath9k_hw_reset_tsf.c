
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AH_TSF_WRITE_TIMEOUT ;
 int AR_RESET_TSF ;
 int AR_RESET_TSF_ONCE ;
 int AR_SLP32_MODE ;
 int AR_SLP32_TSF_WRITE_STATUS ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 int RESET ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_wait (struct ath_hw*,int ,int ,int ,int ) ;
 int ath_dbg (int ,int ,char*) ;

void ath9k_hw_reset_tsf(struct ath_hw *ah)
{
 if (!ath9k_hw_wait(ah, AR_SLP32_MODE, AR_SLP32_TSF_WRITE_STATUS, 0,
      AH_TSF_WRITE_TIMEOUT))
  ath_dbg(ath9k_hw_common(ah), RESET,
   "AR_SLP32_TSF_WRITE_STATUS limit exceeded\n");

 REG_WRITE(ah, AR_RESET_TSF, AR_RESET_TSF_ONCE);
}
