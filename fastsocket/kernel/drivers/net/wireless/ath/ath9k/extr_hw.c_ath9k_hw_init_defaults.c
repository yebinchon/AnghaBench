
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ath_regulatory {int power_limit; int country_code; } ;
struct TYPE_2__ {scalar_t__ subvendorid; int magic; } ;
struct ath_hw {int sta_id1_defaults; int htc_reset_init; int power_mode; scalar_t__ globaltxtimeout; int slottime; scalar_t__ atim_window; TYPE_1__ hw_version; } ;


 int AR5416_MAGIC ;
 scalar_t__ AR_SREV_9100 (struct ath_hw*) ;
 int AR_STA_ID1_AR9100_BA_FIX ;
 int AR_STA_ID1_CRPT_MIC_ENABLE ;
 int AR_STA_ID1_MCAST_KSRCH ;
 int ATH9K_PM_UNDEFINED ;
 int ATH9K_SLOT_TIME_9 ;
 int CTRY_DEFAULT ;
 int MAX_RATE_POWER ;
 struct ath_regulatory* ath9k_hw_regulatory (struct ath_hw*) ;

__attribute__((used)) static void ath9k_hw_init_defaults(struct ath_hw *ah)
{
 struct ath_regulatory *regulatory = ath9k_hw_regulatory(ah);

 regulatory->country_code = CTRY_DEFAULT;
 regulatory->power_limit = MAX_RATE_POWER;

 ah->hw_version.magic = AR5416_MAGIC;
 ah->hw_version.subvendorid = 0;

 ah->atim_window = 0;
 ah->sta_id1_defaults =
  AR_STA_ID1_CRPT_MIC_ENABLE |
  AR_STA_ID1_MCAST_KSRCH;
 if (AR_SREV_9100(ah))
  ah->sta_id1_defaults |= AR_STA_ID1_AR9100_BA_FIX;
 ah->slottime = ATH9K_SLOT_TIME_9;
 ah->globaltxtimeout = (u32) -1;
 ah->power_mode = ATH9K_PM_UNDEFINED;
 ah->htc_reset_init = 1;
}
