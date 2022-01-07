
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_2__ {int (* compute_pll_control ) (struct ath_hw*,struct ath9k_channel*) ;} ;


 TYPE_1__* ath9k_hw_private_ops (struct ath_hw*) ;
 int stub1 (struct ath_hw*,struct ath9k_channel*) ;

__attribute__((used)) static u32 ath9k_hw_compute_pll_control(struct ath_hw *ah,
     struct ath9k_channel *chan)
{
 return ath9k_hw_private_ops(ah)->compute_pll_control(ah, chan);
}
