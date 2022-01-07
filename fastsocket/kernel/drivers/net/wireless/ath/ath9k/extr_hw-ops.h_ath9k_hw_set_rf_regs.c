
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_2__ {int (* set_rf_regs ) (struct ath_hw*,struct ath9k_channel*,int ) ;} ;


 TYPE_1__* ath9k_hw_private_ops (struct ath_hw*) ;
 int stub1 (struct ath_hw*,struct ath9k_channel*,int ) ;

__attribute__((used)) static inline bool ath9k_hw_set_rf_regs(struct ath_hw *ah,
     struct ath9k_channel *chan,
     u16 modesIndex)
{
 if (!ath9k_hw_private_ops(ah)->set_rf_regs)
  return 1;

 return ath9k_hw_private_ops(ah)->set_rf_regs(ah, chan, modesIndex);
}
