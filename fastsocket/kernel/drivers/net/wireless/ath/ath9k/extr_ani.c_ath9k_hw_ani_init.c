
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enable_ani; int ani_poll_interval; int cck_trig_low; int cck_trig_high; int ofdm_trig_low; int ofdm_trig_high; } ;
struct ath_hw {int proc_phyerr; TYPE_1__ config; int aniperiod; struct ath9k_channel* channels; } ;
struct ath_common {int dummy; } ;
struct ar5416AniState {int mrcCCK; int ofdmsTurn; int ofdmNoiseImmunityLevel; int cckNoiseImmunityLevel; int ofdmWeakSigDetect; int firstepLevel; int spurImmunityLevel; } ;
struct ath9k_channel {struct ar5416AniState ani; } ;


 int ANI ;
 int ARRAY_SIZE (struct ath9k_channel*) ;
 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 int ATH9K_ANI_CCK_DEF_LEVEL ;
 int ATH9K_ANI_CCK_TRIG_HIGH ;
 int ATH9K_ANI_CCK_TRIG_LOW ;
 int ATH9K_ANI_FIRSTEP_LVL ;
 int ATH9K_ANI_OFDM_DEF_LEVEL ;
 int ATH9K_ANI_OFDM_TRIG_HIGH ;
 int ATH9K_ANI_OFDM_TRIG_LOW ;
 int ATH9K_ANI_PERIOD ;
 int ATH9K_ANI_POLLINTERVAL ;
 int ATH9K_ANI_SPUR_IMMUNE_LVL ;
 int ATH9K_ANI_USE_OFDM_WEAK_SIG ;
 int HAL_PROCESS_ANI ;
 int ath9k_ani_restart (struct ath_hw*) ;
 int ath9k_enable_mib_counters (struct ath_hw*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

void ath9k_hw_ani_init(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 int i;

 ath_dbg(common, ANI, "Initialize ANI\n");

 ah->config.ofdm_trig_high = ATH9K_ANI_OFDM_TRIG_HIGH;
 ah->config.ofdm_trig_low = ATH9K_ANI_OFDM_TRIG_LOW;

 ah->config.cck_trig_high = ATH9K_ANI_CCK_TRIG_HIGH;
 ah->config.cck_trig_low = ATH9K_ANI_CCK_TRIG_LOW;

 for (i = 0; i < ARRAY_SIZE(ah->channels); i++) {
  struct ath9k_channel *chan = &ah->channels[i];
  struct ar5416AniState *ani = &chan->ani;

  ani->spurImmunityLevel = ATH9K_ANI_SPUR_IMMUNE_LVL;

  ani->firstepLevel = ATH9K_ANI_FIRSTEP_LVL;

  ani->mrcCCK = AR_SREV_9300_20_OR_LATER(ah) ? 1 : 0;

  ani->ofdmsTurn = 1;

  ani->ofdmWeakSigDetect = ATH9K_ANI_USE_OFDM_WEAK_SIG;
  ani->cckNoiseImmunityLevel = ATH9K_ANI_CCK_DEF_LEVEL;
  ani->ofdmNoiseImmunityLevel = ATH9K_ANI_OFDM_DEF_LEVEL;
 }





 ah->aniperiod = ATH9K_ANI_PERIOD;
 ah->config.ani_poll_interval = ATH9K_ANI_POLLINTERVAL;

 if (ah->config.enable_ani)
  ah->proc_phyerr |= HAL_PROCESS_ANI;

 ath9k_ani_restart(ah);
 ath9k_enable_mib_counters(ah);
}
