
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int ATH9K_PM_AWAKE ;
 int ATH9K_RESET_COLD ;
 int ath9k_hw_init_pll (struct ath_hw*,int *) ;
 int ath9k_hw_set_reset_reg (struct ath_hw*,int ) ;
 int ath9k_hw_setpower (struct ath_hw*,int ) ;

bool ath9k_hw_disable(struct ath_hw *ah)
{
 if (!ath9k_hw_setpower(ah, ATH9K_PM_AWAKE))
  return 0;

 if (!ath9k_hw_set_reset_reg(ah, ATH9K_RESET_COLD))
  return 0;

 ath9k_hw_init_pll(ah, ((void*)0));
 return 1;
}
