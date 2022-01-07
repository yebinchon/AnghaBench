
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ath_hw {scalar_t__ PDADCdelta; int * originalGain; } ;


 size_t AR9280_TX_GAIN_TABLE_SIZE ;
 int AR9287_AN_TXPC0 ;
 int AR9287_AN_TXPC0_TXPCMODE ;
 int AR9287_AN_TXPC0_TXPCMODE_S ;
 int AR9287_AN_TXPC0_TXPCMODE_TEMPSENSE ;
 int AR_PHY_TX_GAIN ;
 scalar_t__ AR_PHY_TX_GAIN_TBL1 ;
 int AR_PHY_TX_PWRCTRL9 ;
 int AR_PHY_TX_PWRCTRL9_RES_DC_REMOVAL ;
 int MS (int ,int ) ;
 int OLC_FOR_AR9280_20_LATER ;
 scalar_t__ OLC_FOR_AR9287_10_LATER ;
 int REG_READ (struct ath_hw*,scalar_t__) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int ath9k_hw_analog_shift_rmw (struct ath_hw*,int ,int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void ar9002_olc_init(struct ath_hw *ah)
{
 u32 i;

 if (!OLC_FOR_AR9280_20_LATER)
  return;

 if (OLC_FOR_AR9287_10_LATER) {
  REG_SET_BIT(ah, AR_PHY_TX_PWRCTRL9,
    AR_PHY_TX_PWRCTRL9_RES_DC_REMOVAL);
  ath9k_hw_analog_shift_rmw(ah, AR9287_AN_TXPC0,
    AR9287_AN_TXPC0_TXPCMODE,
    AR9287_AN_TXPC0_TXPCMODE_S,
    AR9287_AN_TXPC0_TXPCMODE_TEMPSENSE);
  udelay(100);
 } else {
  for (i = 0; i < AR9280_TX_GAIN_TABLE_SIZE; i++)
   ah->originalGain[i] =
    MS(REG_READ(ah, AR_PHY_TX_GAIN_TBL1 + i * 4),
      AR_PHY_TX_GAIN);
  ah->PDADCdelta = 0;
 }
}
