
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ analog_shiftreg; } ;
struct TYPE_8__ {int ia_rows; } ;
struct ath_hw {int iniModesFastClock; int iniBB_RfGain; TYPE_2__ config; TYPE_4__ iniCommon; int iniModesTxGain; int iniModesRxGain; scalar_t__ need_an_top2_fixup; TYPE_4__ iniModes; int iniAddac; TYPE_1__* eep_ops; } ;
struct ath_common {TYPE_3__* bus_ops; } ;
struct ath9k_channel {int chanmode; } ;
struct TYPE_7__ {scalar_t__ ath_bus_type; } ;
struct TYPE_5__ {int (* set_addac ) (struct ath_hw*,struct ath9k_channel*) ;} ;


 int AR_AN_TOP2 ;
 int AR_AN_TOP2_PWDCLKIND ;
 int AR_PHY (int ) ;
 int AR_PHY_ADC_SERIAL_CTL ;
 int AR_PHY_RF_CTL3 ;
 int AR_PHY_SEL_EXTERNAL_RADIO ;
 int AR_PHY_SEL_INTERNAL_ADDAC ;
 int AR_PHY_SPECTRAL_SCAN ;
 int AR_PHY_SPECTRAL_SCAN_ENA ;
 int AR_PHY_TX_END_TO_ADC_ON ;
 scalar_t__ AR_SREV_9271_10 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9280 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9285_12_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9287_11_OR_LATER (struct ath_hw*) ;
 scalar_t__ ATH_USB ;
 int DO_DELAY (int) ;
 int EINVAL ;
 int EIO ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int INI_RA (TYPE_4__*,int,int) ;
 scalar_t__ IS_CHAN_A_FAST_CLOCK (struct ath_hw*,struct ath9k_channel*) ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int REG_WRITE (struct ath_hw*,int,int) ;
 int REG_WRITE_ARRAY (int *,int,int) ;
 int ar5008_hw_init_chain_masks (struct ath_hw*) ;
 int ar5008_hw_override_ini (struct ath_hw*,struct ath9k_channel*) ;
 int ar5008_hw_set_channel_regs (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_apply_txpower (struct ath_hw*,struct ath9k_channel*,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_set_rf_regs (struct ath_hw*,struct ath9k_channel*,int) ;
 int ath9k_olc_init (struct ath_hw*) ;
 int ath_err (struct ath_common*,char*) ;
 int stub1 (struct ath_hw*,struct ath9k_channel*) ;
 int udelay (int) ;

__attribute__((used)) static int ar5008_hw_process_ini(struct ath_hw *ah,
     struct ath9k_channel *chan)
{
 struct ath_common *common = ath9k_hw_common(ah);
 int i, regWrites = 0;
 u32 modesIndex, freqIndex;

 switch (chan->chanmode) {
 case 136:
 case 135:
  modesIndex = 1;
  freqIndex = 1;
  break;
 case 133:
 case 134:
  modesIndex = 2;
  freqIndex = 1;
  break;
 case 131:
 case 130:
 case 132:
  modesIndex = 4;
  freqIndex = 2;
  break;
 case 128:
 case 129:
  modesIndex = 3;
  freqIndex = 2;
  break;

 default:
  return -EINVAL;
 }





 REG_WRITE(ah, AR_PHY(0), 0x00000007);


 REG_WRITE(ah, AR_PHY_ADC_SERIAL_CTL, AR_PHY_SEL_EXTERNAL_RADIO);
 if (ah->eep_ops->set_addac)
  ah->eep_ops->set_addac(ah, chan);

 REG_WRITE_ARRAY(&ah->iniAddac, 1, regWrites);
 REG_WRITE(ah, AR_PHY_ADC_SERIAL_CTL, AR_PHY_SEL_INTERNAL_ADDAC);

 ENABLE_REGWRITE_BUFFER(ah);

 for (i = 0; i < ah->iniModes.ia_rows; i++) {
  u32 reg = INI_RA(&ah->iniModes, i, 0);
  u32 val = INI_RA(&ah->iniModes, i, modesIndex);

  if (reg == AR_AN_TOP2 && ah->need_an_top2_fixup)
   val &= ~AR_AN_TOP2_PWDCLKIND;

  REG_WRITE(ah, reg, val);

  if (reg >= 0x7800 && reg < 0x78a0
      && ah->config.analog_shiftreg
      && (common->bus_ops->ath_bus_type != ATH_USB)) {
   udelay(100);
  }

  DO_DELAY(regWrites);
 }

 REGWRITE_BUFFER_FLUSH(ah);

 if (AR_SREV_9280(ah) || AR_SREV_9287_11_OR_LATER(ah))
  REG_WRITE_ARRAY(&ah->iniModesRxGain, modesIndex, regWrites);

 if (AR_SREV_9280(ah) || AR_SREV_9285_12_OR_LATER(ah) ||
     AR_SREV_9287_11_OR_LATER(ah))
  REG_WRITE_ARRAY(&ah->iniModesTxGain, modesIndex, regWrites);

 if (AR_SREV_9271_10(ah)) {
  REG_SET_BIT(ah, AR_PHY_SPECTRAL_SCAN, AR_PHY_SPECTRAL_SCAN_ENA);
  REG_RMW_FIELD(ah, AR_PHY_RF_CTL3, AR_PHY_TX_END_TO_ADC_ON, 0xa);
 }

 ENABLE_REGWRITE_BUFFER(ah);


 for (i = 0; i < ah->iniCommon.ia_rows; i++) {
  u32 reg = INI_RA(&ah->iniCommon, i, 0);
  u32 val = INI_RA(&ah->iniCommon, i, 1);

  REG_WRITE(ah, reg, val);

  if (reg >= 0x7800 && reg < 0x78a0
      && ah->config.analog_shiftreg
      && (common->bus_ops->ath_bus_type != ATH_USB)) {
   udelay(100);
  }

  DO_DELAY(regWrites);
 }

 REGWRITE_BUFFER_FLUSH(ah);

 REG_WRITE_ARRAY(&ah->iniBB_RfGain, freqIndex, regWrites);

 if (IS_CHAN_A_FAST_CLOCK(ah, chan))
  REG_WRITE_ARRAY(&ah->iniModesFastClock, modesIndex,
    regWrites);

 ar5008_hw_override_ini(ah, chan);
 ar5008_hw_set_channel_regs(ah, chan);
 ar5008_hw_init_chain_masks(ah);
 ath9k_olc_init(ah);
 ath9k_hw_apply_txpower(ah, chan, 0);


 if (!ath9k_hw_set_rf_regs(ah, chan, freqIndex)) {
  ath_err(ath9k_hw_common(ah), "ar5416SetRfRegs failed\n");
  return -EIO;
 }

 return 0;
}
