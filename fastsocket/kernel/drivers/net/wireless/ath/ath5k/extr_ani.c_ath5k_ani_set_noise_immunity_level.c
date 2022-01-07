
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int noise_imm_level; } ;
struct ath5k_hw {TYPE_1__ ani_state; } ;
typedef int s8 ;


 int AR5K_PHY_AGCCOARSE ;
 int AR5K_PHY_AGCCOARSE_HI ;
 int AR5K_PHY_AGCCOARSE_LO ;
 int AR5K_PHY_DESIRED_SIZE ;
 int AR5K_PHY_DESIRED_SIZE_TOT ;
 int AR5K_PHY_SIG ;
 int AR5K_PHY_SIG_FIRPWR ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,int const) ;
 int ARRAY_SIZE (int const*) ;
 int ATH5K_DBG_UNLIMIT (struct ath5k_hw*,int ,char*,int) ;
 int ATH5K_DEBUG_ANI ;
 int ATH5K_ERR (struct ath5k_hw*,char*,int) ;

void
ath5k_ani_set_noise_immunity_level(struct ath5k_hw *ah, int level)
{
 static const s8 lo[] = { -64, -70 };
 static const s8 hi[] = { -14, -12 };
 static const s8 sz[] = { -55, -62 };
 static const s8 fr[] = { -78, -80 };

 if (level < 0 || level >= ARRAY_SIZE(sz)) {
  ATH5K_ERR(ah, "noise immunity level %d out of range",
     level);
  return;
 }

 AR5K_REG_WRITE_BITS(ah, AR5K_PHY_DESIRED_SIZE,
    AR5K_PHY_DESIRED_SIZE_TOT, sz[level]);
 AR5K_REG_WRITE_BITS(ah, AR5K_PHY_AGCCOARSE,
    AR5K_PHY_AGCCOARSE_LO, lo[level]);
 AR5K_REG_WRITE_BITS(ah, AR5K_PHY_AGCCOARSE,
    AR5K_PHY_AGCCOARSE_HI, hi[level]);
 AR5K_REG_WRITE_BITS(ah, AR5K_PHY_SIG,
    AR5K_PHY_SIG_FIRPWR, fr[level]);

 ah->ani_state.noise_imm_level = level;
 ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_ANI, "new level %d", level);
}
