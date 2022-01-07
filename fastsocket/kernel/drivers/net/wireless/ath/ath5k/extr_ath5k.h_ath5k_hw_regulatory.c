
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_regulatory {int dummy; } ;
struct ath5k_hw {int dummy; } ;
struct TYPE_2__ {struct ath_regulatory regulatory; } ;


 TYPE_1__* ath5k_hw_common (struct ath5k_hw*) ;

__attribute__((used)) static inline struct ath_regulatory *ath5k_hw_regulatory(struct ath5k_hw *ah)
{
 return &(ath5k_hw_common(ah)->regulatory);
}
