
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {int ah_mibStats; TYPE_1__* curchan; } ;
struct ar5416AniState {scalar_t__ cckPhyErrCount; scalar_t__ ofdmPhyErrCount; scalar_t__ listenTime; } ;
struct TYPE_2__ {struct ar5416AniState ani; } ;


 int AR_PHY_ERR_1 ;
 int AR_PHY_ERR_2 ;
 int AR_PHY_ERR_CCK_TIMING ;
 int AR_PHY_ERR_MASK_1 ;
 int AR_PHY_ERR_MASK_2 ;
 int AR_PHY_ERR_OFDM_TIMING ;
 int DO_ANI (struct ath_hw*) ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 int ath9k_hw_update_mibstats (struct ath_hw*,int *) ;

__attribute__((used)) static void ath9k_ani_restart(struct ath_hw *ah)
{
 struct ar5416AniState *aniState;

 if (!DO_ANI(ah))
  return;

 aniState = &ah->curchan->ani;
 aniState->listenTime = 0;

 ENABLE_REGWRITE_BUFFER(ah);

 REG_WRITE(ah, AR_PHY_ERR_1, 0);
 REG_WRITE(ah, AR_PHY_ERR_2, 0);
 REG_WRITE(ah, AR_PHY_ERR_MASK_1, AR_PHY_ERR_OFDM_TIMING);
 REG_WRITE(ah, AR_PHY_ERR_MASK_2, AR_PHY_ERR_CCK_TIMING);

 REGWRITE_BUFFER_FLUSH(ah);

 ath9k_hw_update_mibstats(ah, &ah->ah_mibStats);

 aniState->ofdmPhyErrCount = 0;
 aniState->cckPhyErrCount = 0;
}
