
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ cck_trig_low; scalar_t__ ofdm_trig_low; scalar_t__ ofdm_trig_high; scalar_t__ cck_trig_high; } ;
struct ath_hw {int aniperiod; TYPE_2__ config; TYPE_1__* curchan; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {int dummy; } ;
struct ar5416AniState {int ofdmPhyErrCount; int listenTime; int cckPhyErrCount; int ofdmsTurn; int cckNoiseImmunityLevel; int ofdmNoiseImmunityLevel; } ;
struct TYPE_3__ {struct ar5416AniState ani; } ;


 int ANI ;
 int DO_ANI (struct ath_hw*) ;
 int ath9k_ani_restart (struct ath_hw*) ;
 int ath9k_hw_ani_cck_err_trigger (struct ath_hw*) ;
 int ath9k_hw_ani_lower_immunity (struct ath_hw*) ;
 int ath9k_hw_ani_ofdm_err_trigger (struct ath_hw*) ;
 int ath9k_hw_ani_read_counters (struct ath_hw*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,int,int ,scalar_t__,int ,scalar_t__,int) ;

void ath9k_hw_ani_monitor(struct ath_hw *ah, struct ath9k_channel *chan)
{
 struct ar5416AniState *aniState;
 struct ath_common *common = ath9k_hw_common(ah);
 u32 ofdmPhyErrRate, cckPhyErrRate;

 if (!DO_ANI(ah))
  return;

 aniState = &ah->curchan->ani;
 if (!ath9k_hw_ani_read_counters(ah))
  return;

 ofdmPhyErrRate = aniState->ofdmPhyErrCount * 1000 /
    aniState->listenTime;
 cckPhyErrRate = aniState->cckPhyErrCount * 1000 /
    aniState->listenTime;

 ath_dbg(common, ANI,
  "listenTime=%d OFDM:%d errs=%d/s CCK:%d errs=%d/s ofdm_turn=%d\n",
  aniState->listenTime,
  aniState->ofdmNoiseImmunityLevel,
  ofdmPhyErrRate, aniState->cckNoiseImmunityLevel,
  cckPhyErrRate, aniState->ofdmsTurn);

 if (aniState->listenTime > ah->aniperiod) {
  if (cckPhyErrRate < ah->config.cck_trig_low &&
      ofdmPhyErrRate < ah->config.ofdm_trig_low) {
   ath9k_hw_ani_lower_immunity(ah);
   aniState->ofdmsTurn = !aniState->ofdmsTurn;
  } else if (ofdmPhyErrRate > ah->config.ofdm_trig_high) {
   ath9k_hw_ani_ofdm_err_trigger(ah);
   aniState->ofdmsTurn = 0;
  } else if (cckPhyErrRate > ah->config.cck_trig_high) {
   ath9k_hw_ani_cck_err_trigger(ah);
   aniState->ofdmsTurn = 1;
  }
  ath9k_ani_restart(ah);
 }
}
