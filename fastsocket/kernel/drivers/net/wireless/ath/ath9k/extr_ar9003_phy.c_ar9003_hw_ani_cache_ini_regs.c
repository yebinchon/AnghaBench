
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int macRev; int macVersion; } ;
struct ath_hw {int opmode; TYPE_1__ hw_version; struct ath9k_channel* curchan; } ;
struct ath_common {int dummy; } ;
struct ath9k_ani_default {void* cycpwrThr1Ext; void* cycpwrThr1; void* firstepLow; void* firstep; void* m2ThreshLowExt; void* m1ThreshLowExt; void* m2ThreshExt; void* m1ThreshExt; void* m2CountThrLow; void* m2ThreshLow; void* m1ThreshLow; void* m2CountThr; void* m2Thresh; void* m1Thresh; } ;
struct ar5416AniState {int mrcCCK; int ofdmWeakSigDetect; int firstepLevel; int spurImmunityLevel; struct ath9k_ani_default iniDef; } ;
struct ath9k_channel {int channelFlags; int channel; struct ar5416AniState ani; } ;


 int ANI ;
 int AR_PHY_EXT_CCA ;
 int AR_PHY_EXT_CYCPWR_THR1 ;
 int AR_PHY_FIND_SIG ;
 int AR_PHY_FIND_SIG_FIRSTEP ;
 int AR_PHY_FIND_SIG_LOW ;
 int AR_PHY_FIND_SIG_LOW_FIRSTEP_LOW ;
 int AR_PHY_SFCORR ;
 int AR_PHY_SFCORR_EXT ;
 int AR_PHY_SFCORR_EXT_M1_THRESH ;
 int AR_PHY_SFCORR_EXT_M1_THRESH_LOW ;
 int AR_PHY_SFCORR_EXT_M2_THRESH ;
 int AR_PHY_SFCORR_EXT_M2_THRESH_LOW ;
 int AR_PHY_SFCORR_LOW ;
 int AR_PHY_SFCORR_LOW_M1_THRESH_LOW ;
 int AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW ;
 int AR_PHY_SFCORR_LOW_M2_THRESH_LOW ;
 int AR_PHY_SFCORR_M1_THRESH ;
 int AR_PHY_SFCORR_M2COUNT_THR ;
 int AR_PHY_SFCORR_M2_THRESH ;
 int AR_PHY_TIMING5 ;
 int AR_PHY_TIMING5_CYCPWR_THR1 ;
 int ATH9K_ANI_FIRSTEP_LVL ;
 int ATH9K_ANI_SPUR_IMMUNE_LVL ;
 int ATH9K_ANI_USE_OFDM_WEAK_SIG ;
 void* MS (int ,int ) ;
 int REG_READ (struct ath_hw*,int ) ;
 void* REG_READ_FIELD (struct ath_hw*,int ,int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void ar9003_hw_ani_cache_ini_regs(struct ath_hw *ah)
{
 struct ar5416AniState *aniState;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_channel *chan = ah->curchan;
 struct ath9k_ani_default *iniDef;
 u32 val;

 aniState = &ah->curchan->ani;
 iniDef = &aniState->iniDef;

 ath_dbg(common, ANI, "ver %d.%d opmode %u chan %d Mhz/0x%x\n",
  ah->hw_version.macVersion,
  ah->hw_version.macRev,
  ah->opmode,
  chan->channel,
  chan->channelFlags);

 val = REG_READ(ah, AR_PHY_SFCORR);
 iniDef->m1Thresh = MS(val, AR_PHY_SFCORR_M1_THRESH);
 iniDef->m2Thresh = MS(val, AR_PHY_SFCORR_M2_THRESH);
 iniDef->m2CountThr = MS(val, AR_PHY_SFCORR_M2COUNT_THR);

 val = REG_READ(ah, AR_PHY_SFCORR_LOW);
 iniDef->m1ThreshLow = MS(val, AR_PHY_SFCORR_LOW_M1_THRESH_LOW);
 iniDef->m2ThreshLow = MS(val, AR_PHY_SFCORR_LOW_M2_THRESH_LOW);
 iniDef->m2CountThrLow = MS(val, AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW);

 val = REG_READ(ah, AR_PHY_SFCORR_EXT);
 iniDef->m1ThreshExt = MS(val, AR_PHY_SFCORR_EXT_M1_THRESH);
 iniDef->m2ThreshExt = MS(val, AR_PHY_SFCORR_EXT_M2_THRESH);
 iniDef->m1ThreshLowExt = MS(val, AR_PHY_SFCORR_EXT_M1_THRESH_LOW);
 iniDef->m2ThreshLowExt = MS(val, AR_PHY_SFCORR_EXT_M2_THRESH_LOW);
 iniDef->firstep = REG_READ_FIELD(ah,
      AR_PHY_FIND_SIG,
      AR_PHY_FIND_SIG_FIRSTEP);
 iniDef->firstepLow = REG_READ_FIELD(ah,
         AR_PHY_FIND_SIG_LOW,
         AR_PHY_FIND_SIG_LOW_FIRSTEP_LOW);
 iniDef->cycpwrThr1 = REG_READ_FIELD(ah,
         AR_PHY_TIMING5,
         AR_PHY_TIMING5_CYCPWR_THR1);
 iniDef->cycpwrThr1Ext = REG_READ_FIELD(ah,
            AR_PHY_EXT_CCA,
            AR_PHY_EXT_CYCPWR_THR1);


 aniState->spurImmunityLevel = ATH9K_ANI_SPUR_IMMUNE_LVL;
 aniState->firstepLevel = ATH9K_ANI_FIRSTEP_LVL;
 aniState->ofdmWeakSigDetect = ATH9K_ANI_USE_OFDM_WEAK_SIG;
 aniState->mrcCCK = 1;
}
