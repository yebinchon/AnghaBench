
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR7010_GPIO_OUT ;
 scalar_t__ AR_DEVID_7010 (struct ath_hw*) ;
 int AR_GPIO_BIT (int) ;
 int AR_GPIO_IN_OUT ;
 scalar_t__ AR_SREV_9271 (struct ath_hw*) ;
 int REG_RMW (struct ath_hw*,int ,int,int ) ;

void ath9k_hw_set_gpio(struct ath_hw *ah, u32 gpio, u32 val)
{
 if (AR_DEVID_7010(ah)) {
  val = val ? 0 : 1;
  REG_RMW(ah, AR7010_GPIO_OUT, ((val&1) << gpio),
   AR_GPIO_BIT(gpio));
  return;
 }

 if (AR_SREV_9271(ah))
  val = ~val;

 REG_RMW(ah, AR_GPIO_IN_OUT, ((val & 1) << gpio),
  AR_GPIO_BIT(gpio));
}
