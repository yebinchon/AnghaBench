
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {int dummy; } ;
struct TYPE_2__ {int (* init_mode_gain_regs ) (struct ath_hw*) ;} ;


 TYPE_1__* ath9k_hw_private_ops (struct ath_hw*) ;
 int stub1 (struct ath_hw*) ;

__attribute__((used)) static void ath9k_hw_init_mode_gain_regs(struct ath_hw *ah)
{
 if (!ath9k_hw_private_ops(ah)->init_mode_gain_regs)
  return;

 ath9k_hw_private_ops(ah)->init_mode_gain_regs(ah);
}
