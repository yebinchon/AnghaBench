
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ state; } ;


 int ATH9K_PM_FULL_SLEEP ;
 scalar_t__ ATH_HW_INITIALIZED ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_setpower (struct ath_hw*,int ) ;

void ath9k_hw_deinit(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);

 if (common->state < ATH_HW_INITIALIZED)
  return;

 ath9k_hw_setpower(ah, ATH9K_PM_FULL_SLEEP);
}
