
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int WARegVal; int reset_power_on; } ;


 int AR_RTC_FORCE_WAKE ;
 int AR_RTC_FORCE_WAKE_EN ;
 int AR_RTC_FORCE_WAKE_ON_INT ;
 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 int AR_WA ;



 int REG_WRITE (struct ath_hw*,int ,int) ;
 int ath9k_hw_set_reset (struct ath_hw*,int) ;
 int ath9k_hw_set_reset_power_on (struct ath_hw*) ;
 int udelay (int) ;

__attribute__((used)) static bool ath9k_hw_set_reset_reg(struct ath_hw *ah, u32 type)
{
 bool ret = 0;

 if (AR_SREV_9300_20_OR_LATER(ah)) {
  REG_WRITE(ah, AR_WA, ah->WARegVal);
  udelay(10);
 }

 REG_WRITE(ah, AR_RTC_FORCE_WAKE,
    AR_RTC_FORCE_WAKE_EN | AR_RTC_FORCE_WAKE_ON_INT);

 if (!ah->reset_power_on)
  type = 129;

 switch (type) {
 case 129:
  ret = ath9k_hw_set_reset_power_on(ah);
  if (ret)
   ah->reset_power_on = 1;
  break;
 case 128:
 case 130:
  ret = ath9k_hw_set_reset(ah, type);
  break;
 default:
  break;
 }

 return ret;
}
