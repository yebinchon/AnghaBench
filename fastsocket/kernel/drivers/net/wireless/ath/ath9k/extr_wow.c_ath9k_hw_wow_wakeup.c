
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int wow_event_mask; scalar_t__ is_pciexpress; } ;


 int AH_WOW_BEACON_MISS ;
 int AH_WOW_LINK_CHANGE ;
 int AH_WOW_MAGIC_PATTERN_EN ;
 int AH_WOW_USER_PATTERN_EN ;
 int AR_PCIE_PM_CTRL ;
 int AR_PMCTRL_PWR_STATE_D1D3 ;
 int AR_PMCTRL_WOW_PME_CLR ;
 int AR_RSSI_THR ;
 scalar_t__ AR_SREV_9280_20_OR_LATER (struct ath_hw*) ;
 int AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 int AR_WA ;
 int AR_WA_POR_SHORT ;
 int AR_WA_RESET_EN ;
 int AR_WA_UNTIE_RESET_EN ;
 int AR_WOW_BEACON_FAIL ;
 int AR_WOW_CLEAR_EVENTS (int) ;
 int AR_WOW_KEEP_ALIVE_FAIL ;
 int AR_WOW_MAGIC_PAT_FOUND ;
 int AR_WOW_PATTERN ;
 scalar_t__ AR_WOW_PATTERN_FOUND (int) ;
 int AR_WOW_STATUS (int) ;
 int INIT_RSSI_THR ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_RMW (struct ath_hw*,int ,int ,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 int ath9k_hw_configpcipowersave (struct ath_hw*,int) ;

u32 ath9k_hw_wow_wakeup(struct ath_hw *ah)
{
 u32 wow_status = 0;
 u32 val = 0, rval;




 rval = REG_READ(ah, AR_WOW_PATTERN);
 val = AR_WOW_STATUS(rval);







 val &= ah->wow_event_mask;

 if (val) {

  if (val & AR_WOW_MAGIC_PAT_FOUND)
   wow_status |= AH_WOW_MAGIC_PATTERN_EN;

  if (AR_WOW_PATTERN_FOUND(val))
   wow_status |= AH_WOW_USER_PATTERN_EN;

  if (val & AR_WOW_KEEP_ALIVE_FAIL)
   wow_status |= AH_WOW_LINK_CHANGE;

  if (val & AR_WOW_BEACON_FAIL)
   wow_status |= AH_WOW_BEACON_MISS;

 }
 REG_RMW(ah, AR_PCIE_PM_CTRL, AR_PMCTRL_WOW_PME_CLR,
  AR_PMCTRL_PWR_STATE_D1D3);




 REG_WRITE(ah, AR_WOW_PATTERN,
    AR_WOW_CLEAR_EVENTS(REG_READ(ah, AR_WOW_PATTERN)));






 if (!AR_SREV_9300_20_OR_LATER(ah)) {
  REG_SET_BIT(ah, AR_WA, AR_WA_UNTIE_RESET_EN |
       AR_WA_POR_SHORT | AR_WA_RESET_EN);
 }





 REG_WRITE(ah, AR_RSSI_THR, INIT_RSSI_THR);
 if (AR_SREV_9280_20_OR_LATER(ah) && ah->is_pciexpress)
  ath9k_hw_configpcipowersave(ah, 0);

 ah->wow_event_mask = 0;

 return wow_status;
}
