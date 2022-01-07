
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int opmode; } ;


 int ath9k_hw_set_operating_mode (struct ath_hw*,int ) ;

void ath9k_hw_setopmode(struct ath_hw *ah)
{
 ath9k_hw_set_operating_mode(ah, ah->opmode);
}
