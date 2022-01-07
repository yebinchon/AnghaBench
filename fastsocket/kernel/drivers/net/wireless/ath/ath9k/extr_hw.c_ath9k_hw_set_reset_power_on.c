
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int WARegVal; } ;


 int AH_WAIT_TIMEOUT ;
 int AR_RC ;
 int AR_RC_AHB ;
 int AR_RTC_FORCE_WAKE ;
 int AR_RTC_FORCE_WAKE_EN ;
 int AR_RTC_FORCE_WAKE_ON_INT ;
 int AR_RTC_RESET ;
 int AR_RTC_STATUS ;
 int AR_RTC_STATUS_M ;
 int AR_RTC_STATUS_ON ;
 int AR_SREV_9100 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 int AR_WA ;
 int ATH9K_RESET_WARM ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int RESET ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_set_reset (struct ath_hw*,int ) ;
 int ath9k_hw_wait (struct ath_hw*,int ,int ,int ,int ) ;
 int ath_dbg (int ,int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static bool ath9k_hw_set_reset_power_on(struct ath_hw *ah)
{
 ENABLE_REGWRITE_BUFFER(ah);

 if (AR_SREV_9300_20_OR_LATER(ah)) {
  REG_WRITE(ah, AR_WA, ah->WARegVal);
  udelay(10);
 }

 REG_WRITE(ah, AR_RTC_FORCE_WAKE, AR_RTC_FORCE_WAKE_EN |
    AR_RTC_FORCE_WAKE_ON_INT);

 if (!AR_SREV_9100(ah) && !AR_SREV_9300_20_OR_LATER(ah))
  REG_WRITE(ah, AR_RC, AR_RC_AHB);

 REG_WRITE(ah, AR_RTC_RESET, 0);

 REGWRITE_BUFFER_FLUSH(ah);

 if (!AR_SREV_9300_20_OR_LATER(ah))
  udelay(2);

 if (!AR_SREV_9100(ah) && !AR_SREV_9300_20_OR_LATER(ah))
  REG_WRITE(ah, AR_RC, 0);

 REG_WRITE(ah, AR_RTC_RESET, 1);

 if (!ath9k_hw_wait(ah,
      AR_RTC_STATUS,
      AR_RTC_STATUS_M,
      AR_RTC_STATUS_ON,
      AH_WAIT_TIMEOUT)) {
  ath_dbg(ath9k_hw_common(ah), RESET, "RTC not waking up\n");
  return 0;
 }

 return ath9k_hw_set_reset(ah, ATH9K_RESET_WARM);
}
