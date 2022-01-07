
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pcie_waen; } ;
struct ath_hw {int wow_event_mask; TYPE_1__ config; scalar_t__ is_pciexpress; } ;


 int AH_WOW_BEACON_MISS ;
 int AH_WOW_LINK_CHANGE ;
 int AH_WOW_MAGIC_PATTERN_EN ;
 int AR9280_WA_DEFAULT ;
 int AR9285_WA_DEFAULT ;
 int AR_PCIE_PHY_REG3 ;
 int AR_PCIE_PM_CTRL ;
 int AR_PCIE_PM_CTRL_ENA ;
 int AR_PCU_MISC_MODE3 ;
 int AR_PMCTRL_AUX_PWR_DET ;
 int AR_PMCTRL_HOST_PME_EN ;
 int AR_PMCTRL_PWR_PM_CTRL_ENA ;
 int AR_PMCTRL_PWR_STATE_D1D3 ;
 int AR_PMCTRL_PWR_STATE_D1D3_REAL ;
 int AR_PMCTRL_WOW_PME_CLR ;
 int AR_RSSI_THR ;
 int AR_RSSI_THR_BM_THR ;
 scalar_t__ AR_SREV_9280 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9285 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9285_12_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9287 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9462 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 int AR_STA_ID1 ;
 int AR_STA_ID1_PRESERVE_SEQNUM ;
 int AR_WA ;
 int AR_WA_D3_L1_DISABLE ;
 int AR_WA_POR_SHORT ;
 int AR_WA_RESET_EN ;
 int AR_WA_UNTIE_RESET_EN ;
 int AR_WOW_AIFS_CNT (int ) ;
 int AR_WOW_BACK_OFF_SHIFT (int ) ;
 int AR_WOW_BCN_EN ;
 int AR_WOW_BCN_TIMO ;
 int AR_WOW_BEACON_FAIL ;
 int AR_WOW_BEACON_FAIL_EN ;
 int AR_WOW_BEACON_TIMO ;
 int AR_WOW_BEACON_TIMO_MAX ;
 int AR_WOW_BMISSTHRESHOLD ;
 int AR_WOW_CNT_AIFS_CNT ;
 int AR_WOW_CNT_KA_CNT ;
 int AR_WOW_CNT_SLOT_CNT ;
 int AR_WOW_COUNT ;
 int AR_WOW_KEEP_ALIVE ;
 int AR_WOW_KEEP_ALIVE_AUTO_DIS ;
 int AR_WOW_KEEP_ALIVE_CNT (int ) ;
 int AR_WOW_KEEP_ALIVE_DELAY ;
 int AR_WOW_KEEP_ALIVE_FAIL ;
 int AR_WOW_KEEP_ALIVE_FAIL_DIS ;
 int AR_WOW_KEEP_ALIVE_NEVER ;
 int AR_WOW_KEEP_ALIVE_TIMO ;
 int AR_WOW_MAC_INTR_EN ;
 int AR_WOW_MAGIC_EN ;
 int AR_WOW_MAGIC_PAT_FOUND ;
 int AR_WOW_PATTERN ;
 int AR_WOW_PATTERN_MATCH_LT_256B ;
 int AR_WOW_PATTERN_SUPPORTED ;
 int AR_WOW_PAT_BACKOFF ;
 int AR_WOW_SLOT_CNT (int ) ;
 int BIT (int) ;
 int KAL_DELAY ;
 int KAL_TIMEOUT ;
 int REG_CLR_BIT (struct ath_hw*,int ,int) ;
 int REG_RMW (struct ath_hw*,int ,int,int) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int ath9k_hw_config_serdes_wow_sleep (struct ath_hw*) ;
 int ath9k_hw_set_powermode_wow_sleep (struct ath_hw*) ;
 int ath9k_wow_create_keep_alive_pattern (struct ath_hw*) ;

void ath9k_hw_wow_enable(struct ath_hw *ah, u32 pattern_enable)
{
 u32 wow_event_mask;
 u32 set, clr;
 wow_event_mask = ah->wow_event_mask;







 if (ah->is_pciexpress) {







  if (AR_SREV_9300_20_OR_LATER(ah)) {
   set = AR_WA_RESET_EN | AR_WA_POR_SHORT;
   clr = AR_WA_UNTIE_RESET_EN | AR_WA_D3_L1_DISABLE;
   REG_RMW(ah, AR_WA, set, clr);
  } else {
   if (AR_SREV_9285(ah) || AR_SREV_9287(ah))
    set = AR9285_WA_DEFAULT;
   else
    set = AR9280_WA_DEFAULT;
   if (ah->config.pcie_waen & AR_WA_D3_L1_DISABLE)
    set |= AR_WA_D3_L1_DISABLE;

   clr = AR_WA_UNTIE_RESET_EN;
   set |= AR_WA_RESET_EN | AR_WA_POR_SHORT;
   REG_RMW(ah, AR_WA, set, clr);
   if (AR_SREV_9285_12_OR_LATER(ah))
    ath9k_hw_config_serdes_wow_sleep(ah);

  }
 }




 set = AR_PMCTRL_HOST_PME_EN | AR_PMCTRL_PWR_PM_CTRL_ENA |
       AR_PMCTRL_AUX_PWR_DET | AR_PMCTRL_WOW_PME_CLR;





 REG_SET_BIT(ah, AR_PCIE_PM_CTRL, set);
 clr = AR_PMCTRL_WOW_PME_CLR;
 REG_CLR_BIT(ah, AR_PCIE_PM_CTRL, clr);
 set = AR_WOW_BACK_OFF_SHIFT(AR_WOW_PAT_BACKOFF);
 REG_SET_BIT(ah, AR_WOW_PATTERN, set);

 set = AR_WOW_AIFS_CNT(AR_WOW_CNT_AIFS_CNT) |
       AR_WOW_SLOT_CNT(AR_WOW_CNT_SLOT_CNT) |
       AR_WOW_KEEP_ALIVE_CNT(AR_WOW_CNT_KA_CNT);
 REG_SET_BIT(ah, AR_WOW_COUNT, set);

 if (pattern_enable & AH_WOW_BEACON_MISS)
  set = AR_WOW_BEACON_TIMO;

 else
  set = AR_WOW_BEACON_TIMO_MAX;

 REG_WRITE(ah, AR_WOW_BCN_TIMO, set);




 if (!pattern_enable || AR_SREV_9280(ah))
  set = AR_WOW_KEEP_ALIVE_NEVER;
 else
  set = KAL_TIMEOUT * 32;

 REG_WRITE(ah, AR_WOW_KEEP_ALIVE_TIMO, set);





 set = KAL_DELAY * 1000;
 REG_WRITE(ah, AR_WOW_KEEP_ALIVE_DELAY, set);




 ath9k_wow_create_keep_alive_pattern(ah);





 set = 0;

 clr = AR_WOW_KEEP_ALIVE_AUTO_DIS;

 if (pattern_enable & AH_WOW_LINK_CHANGE)
  wow_event_mask |= AR_WOW_KEEP_ALIVE_FAIL;
 else
  set = AR_WOW_KEEP_ALIVE_FAIL_DIS;






 set = AR_WOW_KEEP_ALIVE_FAIL_DIS;

 REG_RMW(ah, AR_WOW_KEEP_ALIVE, set, clr);






 REG_RMW_FIELD(ah, AR_RSSI_THR, AR_RSSI_THR_BM_THR,
        AR_WOW_BMISSTHRESHOLD);

 set = 0;
 clr = 0;

 if (pattern_enable & AH_WOW_BEACON_MISS) {
  set = AR_WOW_BEACON_FAIL_EN;
  wow_event_mask |= AR_WOW_BEACON_FAIL;
 } else {
  clr = AR_WOW_BEACON_FAIL_EN;
 }

 REG_RMW(ah, AR_WOW_BCN_EN, set, clr);

 set = 0;
 clr = 0;



 if (pattern_enable & AH_WOW_MAGIC_PATTERN_EN) {
  set = AR_WOW_MAGIC_EN;
  wow_event_mask |= AR_WOW_MAGIC_PAT_FOUND;
 } else {
  clr = AR_WOW_MAGIC_EN;
 }
 set |= AR_WOW_MAC_INTR_EN;
 REG_RMW(ah, AR_WOW_PATTERN, set, clr);






 if (AR_SREV_9285_12_OR_LATER(ah))
  REG_WRITE(ah, AR_WOW_PATTERN_MATCH_LT_256B,
     AR_WOW_PATTERN_SUPPORTED);




 clr = 0;
 set = AR_PMCTRL_PWR_STATE_D1D3 | AR_PMCTRL_HOST_PME_EN |
       AR_PMCTRL_PWR_PM_CTRL_ENA;




 if (AR_SREV_9300_20_OR_LATER(ah))
  clr = AR_PCIE_PM_CTRL_ENA;

 REG_RMW(ah, AR_PCIE_PM_CTRL, set, clr);

 if (AR_SREV_9462(ah) || AR_SREV_9565(ah)) {
  clr = AR_PMCTRL_PWR_STATE_D1D3;
  REG_CLR_BIT(ah, AR_PCIE_PM_CTRL, clr);

  set = AR_PMCTRL_PWR_STATE_D1D3_REAL;
  REG_SET_BIT(ah, AR_PCIE_PM_CTRL, set);
 }



 REG_CLR_BIT(ah, AR_STA_ID1, AR_STA_ID1_PRESERVE_SEQNUM);

 if (AR_SREV_9300_20_OR_LATER(ah)) {

  set = BIT(13);
  REG_SET_BIT(ah, AR_PCIE_PHY_REG3, set);

  clr = BIT(5);
  REG_CLR_BIT(ah, AR_PCU_MISC_MODE3, clr);
 }

 ath9k_hw_set_powermode_wow_sleep(ah);
 ah->wow_event_mask = wow_event_mask;
}
