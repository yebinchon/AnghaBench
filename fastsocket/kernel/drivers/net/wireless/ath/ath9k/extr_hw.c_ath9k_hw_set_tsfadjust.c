
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int misc_mode; } ;


 int AR_PCU_TX_ADD_TSF ;

void ath9k_hw_set_tsfadjust(struct ath_hw *ah, bool set)
{
 if (set)
  ah->misc_mode |= AR_PCU_TX_ADD_TSF;
 else
  ah->misc_mode &= ~AR_PCU_TX_ADD_TSF;
}
