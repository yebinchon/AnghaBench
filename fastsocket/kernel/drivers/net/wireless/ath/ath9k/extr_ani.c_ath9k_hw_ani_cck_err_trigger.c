
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {TYPE_1__* curchan; } ;
struct ar5416AniState {scalar_t__ cckNoiseImmunityLevel; } ;
struct TYPE_2__ {struct ar5416AniState ani; } ;


 scalar_t__ ATH9K_ANI_CCK_MAX_LEVEL ;
 int DO_ANI (struct ath_hw*) ;
 int ath9k_hw_set_cck_nil (struct ath_hw*,scalar_t__,int) ;

__attribute__((used)) static void ath9k_hw_ani_cck_err_trigger(struct ath_hw *ah)
{
 struct ar5416AniState *aniState;

 if (!DO_ANI(ah))
  return;

 aniState = &ah->curchan->ani;

 if (aniState->cckNoiseImmunityLevel < ATH9K_ANI_CCK_MAX_LEVEL)
  ath9k_hw_set_cck_nil(ah, aniState->cckNoiseImmunityLevel + 1,
         0);
}
