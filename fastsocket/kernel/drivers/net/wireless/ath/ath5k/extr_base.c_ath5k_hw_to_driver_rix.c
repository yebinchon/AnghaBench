
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath5k_hw {int** rate_idx; TYPE_1__* curchan; } ;
struct TYPE_2__ {size_t band; } ;


 int AR5K_MAX_RATES ;
 scalar_t__ WARN (int,char*,int) ;

__attribute__((used)) static inline int
ath5k_hw_to_driver_rix(struct ath5k_hw *ah, int hw_rix)
{
 int rix;


 if (WARN(hw_rix < 0 || hw_rix >= AR5K_MAX_RATES,
   "hw_rix out of bounds: %x\n", hw_rix))
  return 0;

 rix = ah->rate_idx[ah->curchan->band][hw_rix];
 if (WARN(rix < 0, "invalid hw_rix: %x\n", hw_rix))
  rix = 0;

 return rix;
}
