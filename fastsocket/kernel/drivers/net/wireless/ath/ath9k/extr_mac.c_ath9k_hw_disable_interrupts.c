
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int imask; int intr_ref_cnt; } ;


 int ATH9K_INT_GLOBAL ;
 int ath9k_hw_kill_interrupts (struct ath_hw*) ;
 int atomic_dec (int *) ;
 int atomic_set (int *,int) ;

void ath9k_hw_disable_interrupts(struct ath_hw *ah)
{
 if (!(ah->imask & ATH9K_INT_GLOBAL))
  atomic_set(&ah->intr_ref_cnt, -1);
 else
  atomic_dec(&ah->intr_ref_cnt);

 ath9k_hw_kill_interrupts(ah);
}
