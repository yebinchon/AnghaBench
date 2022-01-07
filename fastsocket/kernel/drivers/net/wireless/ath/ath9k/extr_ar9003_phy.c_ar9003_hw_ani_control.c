
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {int ast_ani_cckhigh; int ast_ani_ccklow; int ast_ani_spurdown; int ast_ani_spurup; int ast_ani_stepdown; int ast_ani_stepup; int ast_ani_ofdmoff; int ast_ani_ofdmon; } ;
struct ath_hw {int ani_function; TYPE_2__ stats; struct ath9k_channel* curchan; } ;
struct ath_common {int dummy; } ;
struct TYPE_3__ {int firstep; int firstepLow; int cycpwrThr1; int cycpwrThr1Ext; } ;
struct ar5416AniState {size_t ofdmWeakSigDetect; size_t firstepLevel; size_t spurImmunityLevel; int mrcCCK; int cckPhyErrCount; int ofdmPhyErrCount; int listenTime; TYPE_1__ iniDef; } ;
struct ath9k_channel {int channel; struct ar5416AniState ani; } ;
typedef int s32 ;
typedef enum ath9k_ani_cmd { ____Placeholder_ath9k_ani_cmd } ath9k_ani_cmd ;


 int ANI ;
 size_t ARRAY_SIZE (int*) ;
 int AR_PHY_EXT_CCA ;
 int AR_PHY_EXT_CYCPWR_THR1 ;
 int AR_PHY_FIND_SIG ;
 int AR_PHY_FIND_SIG_FIRSTEP ;
 int AR_PHY_FIND_SIG_LOW ;
 int AR_PHY_FIND_SIG_LOW_FIRSTEP_LOW ;
 int AR_PHY_MRC_CCK_CTRL ;
 int AR_PHY_MRC_CCK_ENABLE ;
 int AR_PHY_MRC_CCK_MUX_REG ;
 int AR_PHY_SFCORR_LOW ;
 int AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW ;
 int AR_PHY_TIMING5 ;
 int AR_PHY_TIMING5_CYCPWR_THR1 ;

 size_t ATH9K_ANI_FIRSTEP_LVL ;



 size_t ATH9K_ANI_SPUR_IMMUNE_LVL ;

 int ATH9K_SIG_FIRSTEP_SETTING_MAX ;
 int ATH9K_SIG_FIRSTEP_SETTING_MIN ;
 int ATH9K_SIG_SPUR_IMM_SETTING_MAX ;
 int ATH9K_SIG_SPUR_IMM_SETTING_MIN ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,size_t,...) ;
 int* cycpwrThr1_table ;
 int* firstep_table ;

__attribute__((used)) static bool ar9003_hw_ani_control(struct ath_hw *ah,
      enum ath9k_ani_cmd cmd, int param)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_channel *chan = ah->curchan;
 struct ar5416AniState *aniState = &chan->ani;
 s32 value, value2;

 switch (cmd & ah->ani_function) {
 case 130:{







  u32 on = param ? 1 : 0;

  if (on)
   REG_SET_BIT(ah, AR_PHY_SFCORR_LOW,
        AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW);
  else
   REG_CLR_BIT(ah, AR_PHY_SFCORR_LOW,
        AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW);

  if (on != aniState->ofdmWeakSigDetect) {
   ath_dbg(common, ANI,
    "** ch %d: ofdm weak signal: %s=>%s\n",
    chan->channel,
    aniState->ofdmWeakSigDetect ?
    "on" : "off",
    on ? "on" : "off");
   if (on)
    ah->stats.ast_ani_ofdmon++;
   else
    ah->stats.ast_ani_ofdmoff++;
   aniState->ofdmWeakSigDetect = on;
  }
  break;
 }
 case 132:{
  u32 level = param;

  if (level >= ARRAY_SIZE(firstep_table)) {
   ath_dbg(common, ANI,
    "ATH9K_ANI_FIRSTEP_LEVEL: level out of range (%u > %zu)\n",
    level, ARRAY_SIZE(firstep_table));
   return 0;
  }





  value = firstep_table[level] -
   firstep_table[ATH9K_ANI_FIRSTEP_LVL] +
   aniState->iniDef.firstep;
  if (value < ATH9K_SIG_FIRSTEP_SETTING_MIN)
   value = ATH9K_SIG_FIRSTEP_SETTING_MIN;
  if (value > ATH9K_SIG_FIRSTEP_SETTING_MAX)
   value = ATH9K_SIG_FIRSTEP_SETTING_MAX;
  REG_RMW_FIELD(ah, AR_PHY_FIND_SIG,
         AR_PHY_FIND_SIG_FIRSTEP,
         value);





  value2 = firstep_table[level] -
    firstep_table[ATH9K_ANI_FIRSTEP_LVL] +
    aniState->iniDef.firstepLow;
  if (value2 < ATH9K_SIG_FIRSTEP_SETTING_MIN)
   value2 = ATH9K_SIG_FIRSTEP_SETTING_MIN;
  if (value2 > ATH9K_SIG_FIRSTEP_SETTING_MAX)
   value2 = ATH9K_SIG_FIRSTEP_SETTING_MAX;

  REG_RMW_FIELD(ah, AR_PHY_FIND_SIG_LOW,
         AR_PHY_FIND_SIG_LOW_FIRSTEP_LOW, value2);

  if (level != aniState->firstepLevel) {
   ath_dbg(common, ANI,
    "** ch %d: level %d=>%d[def:%d] firstep[level]=%d ini=%d\n",
    chan->channel,
    aniState->firstepLevel,
    level,
    ATH9K_ANI_FIRSTEP_LVL,
    value,
    aniState->iniDef.firstep);
   ath_dbg(common, ANI,
    "** ch %d: level %d=>%d[def:%d] firstep_low[level]=%d ini=%d\n",
    chan->channel,
    aniState->firstepLevel,
    level,
    ATH9K_ANI_FIRSTEP_LVL,
    value2,
    aniState->iniDef.firstepLow);
   if (level > aniState->firstepLevel)
    ah->stats.ast_ani_stepup++;
   else if (level < aniState->firstepLevel)
    ah->stats.ast_ani_stepdown++;
   aniState->firstepLevel = level;
  }
  break;
 }
 case 128:{
  u32 level = param;

  if (level >= ARRAY_SIZE(cycpwrThr1_table)) {
   ath_dbg(common, ANI,
    "ATH9K_ANI_SPUR_IMMUNITY_LEVEL: level out of range (%u > %zu)\n",
    level, ARRAY_SIZE(cycpwrThr1_table));
   return 0;
  }




  value = cycpwrThr1_table[level] -
   cycpwrThr1_table[ATH9K_ANI_SPUR_IMMUNE_LVL] +
   aniState->iniDef.cycpwrThr1;
  if (value < ATH9K_SIG_SPUR_IMM_SETTING_MIN)
   value = ATH9K_SIG_SPUR_IMM_SETTING_MIN;
  if (value > ATH9K_SIG_SPUR_IMM_SETTING_MAX)
   value = ATH9K_SIG_SPUR_IMM_SETTING_MAX;
  REG_RMW_FIELD(ah, AR_PHY_TIMING5,
         AR_PHY_TIMING5_CYCPWR_THR1,
         value);






  value2 = cycpwrThr1_table[level] -
    cycpwrThr1_table[ATH9K_ANI_SPUR_IMMUNE_LVL] +
    aniState->iniDef.cycpwrThr1Ext;
  if (value2 < ATH9K_SIG_SPUR_IMM_SETTING_MIN)
   value2 = ATH9K_SIG_SPUR_IMM_SETTING_MIN;
  if (value2 > ATH9K_SIG_SPUR_IMM_SETTING_MAX)
   value2 = ATH9K_SIG_SPUR_IMM_SETTING_MAX;
  REG_RMW_FIELD(ah, AR_PHY_EXT_CCA,
         AR_PHY_EXT_CYCPWR_THR1, value2);

  if (level != aniState->spurImmunityLevel) {
   ath_dbg(common, ANI,
    "** ch %d: level %d=>%d[def:%d] cycpwrThr1[level]=%d ini=%d\n",
    chan->channel,
    aniState->spurImmunityLevel,
    level,
    ATH9K_ANI_SPUR_IMMUNE_LVL,
    value,
    aniState->iniDef.cycpwrThr1);
   ath_dbg(common, ANI,
    "** ch %d: level %d=>%d[def:%d] cycpwrThr1Ext[level]=%d ini=%d\n",
    chan->channel,
    aniState->spurImmunityLevel,
    level,
    ATH9K_ANI_SPUR_IMMUNE_LVL,
    value2,
    aniState->iniDef.cycpwrThr1Ext);
   if (level > aniState->spurImmunityLevel)
    ah->stats.ast_ani_spurup++;
   else if (level < aniState->spurImmunityLevel)
    ah->stats.ast_ani_spurdown++;
   aniState->spurImmunityLevel = level;
  }
  break;
 }
 case 131:{




  bool is_on = param ? 1 : 0;
  REG_RMW_FIELD(ah, AR_PHY_MRC_CCK_CTRL,
         AR_PHY_MRC_CCK_ENABLE, is_on);
  REG_RMW_FIELD(ah, AR_PHY_MRC_CCK_CTRL,
         AR_PHY_MRC_CCK_MUX_REG, is_on);
  if (is_on != aniState->mrcCCK) {
   ath_dbg(common, ANI, "** ch %d: MRC CCK: %s=>%s\n",
    chan->channel,
    aniState->mrcCCK ? "on" : "off",
    is_on ? "on" : "off");
  if (is_on)
   ah->stats.ast_ani_ccklow++;
  else
   ah->stats.ast_ani_cckhigh++;
  aniState->mrcCCK = is_on;
  }
 break;
 }
 case 129:
  break;
 default:
  ath_dbg(common, ANI, "invalid cmd %u\n", cmd);
  return 0;
 }

 ath_dbg(common, ANI,
  "ANI parameters: SI=%d, ofdmWS=%s FS=%d MRCcck=%s listenTime=%d ofdmErrs=%d cckErrs=%d\n",
  aniState->spurImmunityLevel,
  aniState->ofdmWeakSigDetect ? "on" : "off",
  aniState->firstepLevel,
  aniState->mrcCCK ? "on" : "off",
  aniState->listenTime,
  aniState->ofdmPhyErrCount,
  aniState->cckPhyErrCount);
 return 1;
}
