
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {int dummy; } ;
struct TYPE_2__ {int xpaBiasLvl; } ;


 int AR_CH0_THERM ;
 int AR_CH0_THERM_XPABIASLVL_MSB ;
 int AR_CH0_THERM_XPASHORT2GND ;
 int AR_CH0_TOP ;
 int AR_CH0_TOP2 ;
 int AR_CH0_TOP2_XPABIASLVL ;
 int AR_CH0_TOP_XPABIASLVL ;
 scalar_t__ AR_SREV_9330 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9340 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9462 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9485 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9550 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 TYPE_1__* ar9003_modal_header (struct ath_hw*,int) ;

__attribute__((used)) static void ar9003_hw_xpa_bias_level_apply(struct ath_hw *ah, bool is2ghz)
{
 int bias = ar9003_modal_header(ah, is2ghz)->xpaBiasLvl;

 if (AR_SREV_9485(ah) || AR_SREV_9330(ah) || AR_SREV_9340(ah))
  REG_RMW_FIELD(ah, AR_CH0_TOP2, AR_CH0_TOP2_XPABIASLVL, bias);
 else if (AR_SREV_9462(ah) || AR_SREV_9550(ah) || AR_SREV_9565(ah))
  REG_RMW_FIELD(ah, AR_CH0_TOP, AR_CH0_TOP_XPABIASLVL, bias);
 else {
  REG_RMW_FIELD(ah, AR_CH0_TOP, AR_CH0_TOP_XPABIASLVL, bias);
  REG_RMW_FIELD(ah, AR_CH0_THERM,
    AR_CH0_THERM_XPABIASLVL_MSB,
    bias >> 2);
  REG_RMW_FIELD(ah, AR_CH0_THERM,
    AR_CH0_THERM_XPASHORT2GND, 1);
 }
}
