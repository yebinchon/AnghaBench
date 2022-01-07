
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;


 int AR_DIAG_RX_ABORT ;
 int AR_DIAG_RX_DIS ;
 int AR_DIAG_SW ;
 int AR_PCU_MISC_MODE2 ;
 int AR_PCU_MISC_MODE2_HWWAR1 ;
 int AR_PCU_MISC_MODE2_HWWAR2 ;
 int AR_PHY_CCK_DETECT ;
 int AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV ;
 int AR_PHY_HEAVY_CLIP_FACTOR_RIFS ;
 int AR_PHY_RIFS_INIT_DELAY ;
 scalar_t__ AR_SREV_9100 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9160 (struct ath_hw*) ;
 int AR_SREV_9271 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9280_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9287_11_OR_LATER (struct ath_hw*) ;
 int REG_READ (struct ath_hw*,int) ;
 int REG_SET_BIT (struct ath_hw*,int ,int) ;
 int REG_WRITE (struct ath_hw*,int,int) ;

__attribute__((used)) static void ar5008_hw_override_ini(struct ath_hw *ah,
       struct ath9k_channel *chan)
{
 u32 val;






 REG_SET_BIT(ah, AR_DIAG_SW, (AR_DIAG_RX_DIS | AR_DIAG_RX_ABORT));

 if (AR_SREV_9280_20_OR_LATER(ah)) {
  val = REG_READ(ah, AR_PCU_MISC_MODE2);

  if (!AR_SREV_9271(ah))
   val &= ~AR_PCU_MISC_MODE2_HWWAR1;

  if (AR_SREV_9287_11_OR_LATER(ah))
   val = val & (~AR_PCU_MISC_MODE2_HWWAR2);

  REG_WRITE(ah, AR_PCU_MISC_MODE2, val);
 }

 REG_SET_BIT(ah, AR_PHY_CCK_DETECT,
      AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV);

 if (AR_SREV_9280_20_OR_LATER(ah))
  return;




 REG_WRITE(ah, 0x9800 + (651 << 2), 0x11);





 if (AR_SREV_9100(ah) || AR_SREV_9160(ah)) {
  val = REG_READ(ah, AR_PHY_HEAVY_CLIP_FACTOR_RIFS);
  val &= ~AR_PHY_RIFS_INIT_DELAY;
  REG_WRITE(ah, AR_PHY_HEAVY_CLIP_FACTOR_RIFS, val);
 }
}
