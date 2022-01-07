
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int dummy; } ;


 int AR5K_INTPEND ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;

bool
ath5k_hw_is_intr_pending(struct ath5k_hw *ah)
{
 return ath5k_hw_reg_read(ah, AR5K_INTPEND) == 1 ? 1 : 0;
}
