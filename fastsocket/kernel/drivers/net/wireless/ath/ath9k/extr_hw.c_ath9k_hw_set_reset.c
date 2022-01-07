
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int WARegVal; int (* external_reset ) () ;} ;


 int AH_WAIT_TIMEOUT ;
 int AR9340_INTR_SYNC_LOCAL_TIMEOUT ;
 int AR_INTR_SYNC_CAUSE ;
 int AR_INTR_SYNC_ENABLE ;
 int AR_INTR_SYNC_LOCAL_TIMEOUT ;
 int AR_INTR_SYNC_RADM_CPL_TIMEOUT ;
 int AR_NUM_QCU ;
 int AR_RC ;
 int AR_RC_AHB ;
 int AR_RC_HOSTIF ;
 int AR_RTC_DERIVED_CLK ;
 int AR_RTC_DERIVED_CLK_PERIOD ;
 int AR_RTC_FORCE_WAKE ;
 int AR_RTC_FORCE_WAKE_EN ;
 int AR_RTC_FORCE_WAKE_ON_INT ;
 int AR_RTC_RC ;
 int AR_RTC_RC_COLD_RESET ;
 int AR_RTC_RC_M ;
 int AR_RTC_RC_MAC_COLD ;
 int AR_RTC_RC_MAC_WARM ;
 int AR_RTC_RC_WARM_RESET ;
 int AR_RTC_RESET ;
 scalar_t__ AR_SREV_9100 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9330 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9340 (struct ath_hw*) ;
 int AR_WA ;
 int ATH9K_RESET_COLD ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int RESET ;
 int ar9003_mci_check_gpm_offset (struct ath_hw*) ;
 int ath9k_hw_common (struct ath_hw*) ;
 scalar_t__ ath9k_hw_mci_is_enabled (struct ath_hw*) ;
 int ath9k_hw_numtxpending (struct ath_hw*,int) ;
 int ath9k_hw_wait (struct ath_hw*,int ,int ,int ,int ) ;
 int ath_dbg (int ,int ,char*) ;
 int ath_err (int ,char*,int) ;
 int stub1 () ;
 int udelay (int) ;

__attribute__((used)) static bool ath9k_hw_set_reset(struct ath_hw *ah, int type)
{
 u32 rst_flags;
 u32 tmpReg;

 if (AR_SREV_9100(ah)) {
  REG_RMW_FIELD(ah, AR_RTC_DERIVED_CLK,
         AR_RTC_DERIVED_CLK_PERIOD, 1);
  (void)REG_READ(ah, AR_RTC_DERIVED_CLK);
 }

 ENABLE_REGWRITE_BUFFER(ah);

 if (AR_SREV_9300_20_OR_LATER(ah)) {
  REG_WRITE(ah, AR_WA, ah->WARegVal);
  udelay(10);
 }

 REG_WRITE(ah, AR_RTC_FORCE_WAKE, AR_RTC_FORCE_WAKE_EN |
    AR_RTC_FORCE_WAKE_ON_INT);

 if (AR_SREV_9100(ah)) {
  rst_flags = AR_RTC_RC_MAC_WARM | AR_RTC_RC_MAC_COLD |
   AR_RTC_RC_COLD_RESET | AR_RTC_RC_WARM_RESET;
 } else {
  tmpReg = REG_READ(ah, AR_INTR_SYNC_CAUSE);
  if (AR_SREV_9340(ah))
   tmpReg &= AR9340_INTR_SYNC_LOCAL_TIMEOUT;
  else
   tmpReg &= AR_INTR_SYNC_LOCAL_TIMEOUT |
      AR_INTR_SYNC_RADM_CPL_TIMEOUT;

  if (tmpReg) {
   u32 val;
   REG_WRITE(ah, AR_INTR_SYNC_ENABLE, 0);

   val = AR_RC_HOSTIF;
   if (!AR_SREV_9300_20_OR_LATER(ah))
    val |= AR_RC_AHB;
   REG_WRITE(ah, AR_RC, val);

  } else if (!AR_SREV_9300_20_OR_LATER(ah))
   REG_WRITE(ah, AR_RC, AR_RC_AHB);

  rst_flags = AR_RTC_RC_MAC_WARM;
  if (type == ATH9K_RESET_COLD)
   rst_flags |= AR_RTC_RC_MAC_COLD;
 }

 if (AR_SREV_9330(ah)) {
  int npend = 0;
  int i;







  for (i = 0; i < AR_NUM_QCU; i++) {
   npend = ath9k_hw_numtxpending(ah, i);
   if (npend)
    break;
  }

  if (ah->external_reset &&
      (npend || type == ATH9K_RESET_COLD)) {
   int reset_err = 0;

   ath_dbg(ath9k_hw_common(ah), RESET,
    "reset MAC via external reset\n");

   reset_err = ah->external_reset();
   if (reset_err) {
    ath_err(ath9k_hw_common(ah),
     "External reset failed, err=%d\n",
     reset_err);
    return 0;
   }

   REG_WRITE(ah, AR_RTC_RESET, 1);
  }
 }

 if (ath9k_hw_mci_is_enabled(ah))
  ar9003_mci_check_gpm_offset(ah);

 REG_WRITE(ah, AR_RTC_RC, rst_flags);

 REGWRITE_BUFFER_FLUSH(ah);

 udelay(50);

 REG_WRITE(ah, AR_RTC_RC, 0);
 if (!ath9k_hw_wait(ah, AR_RTC_RC, AR_RTC_RC_M, 0, AH_WAIT_TIMEOUT)) {
  ath_dbg(ath9k_hw_common(ah), RESET, "RTC stuck in MAC reset\n");
  return 0;
 }

 if (!AR_SREV_9100(ah))
  REG_WRITE(ah, AR_RC, 0);

 if (AR_SREV_9100(ah))
  udelay(50);

 return 1;
}
