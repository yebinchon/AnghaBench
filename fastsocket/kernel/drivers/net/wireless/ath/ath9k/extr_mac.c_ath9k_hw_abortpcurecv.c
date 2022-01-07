
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_DIAG_RX_ABORT ;
 int AR_DIAG_RX_DIS ;
 int AR_DIAG_SW ;
 int REG_SET_BIT (struct ath_hw*,int ,int) ;
 int ath9k_hw_disable_mib_counters (struct ath_hw*) ;

void ath9k_hw_abortpcurecv(struct ath_hw *ah)
{
 REG_SET_BIT(ah, AR_DIAG_SW, AR_DIAG_RX_ABORT | AR_DIAG_RX_DIS);

 ath9k_hw_disable_mib_counters(ah);
}
