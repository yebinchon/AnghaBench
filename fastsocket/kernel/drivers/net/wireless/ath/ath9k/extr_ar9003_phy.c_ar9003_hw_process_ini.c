
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int modes_index; int enabled_cals; int txchainmask; int rxchainmask; int iniCckfirJapan2484; int iniAdditional; int iniModesFastClock; int iniModesTxGain; int ini_modes_rx_gain_bounds; int iniModesRxGain; int ini_radio_post_sys2ant; int * iniRadio; int * iniBB; int * iniMac; int * iniSOC; } ;
struct ath9k_channel {int chanmode; int channel; } ;


 int AR_GLB_SWREG_DISCONT_EN_BT_WLAN ;
 int AR_GLB_SWREG_DISCONT_MODE ;
 int AR_PHY_CL_CAL_CTL ;
 int AR_PHY_CL_CAL_ENABLE ;
 int AR_PHY_TX_IQCAL_CONTROL_0 ;
 int AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL ;
 scalar_t__ AR_SREV_9462 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9462_20 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9550 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 unsigned int ATH_INI_NUM_SPLIT ;
 unsigned int ATH_INI_POST ;
 int EINVAL ;
 scalar_t__ IS_CHAN_A_FAST_CLOCK (struct ath_hw*,struct ath9k_channel*) ;
 int REG_READ (struct ath_hw*,int ) ;
 scalar_t__ REG_READ_FIELD (struct ath_hw*,int ,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 int REG_WRITE_ARRAY (int *,int,unsigned int) ;
 int TX_CL_CAL ;
 int TX_IQ_CAL ;
 int ar9003_hw_override_ini (struct ath_hw*) ;
 int ar9003_hw_prog_ini (struct ath_hw*,int *,int) ;
 int ar9003_hw_set_chain_masks (struct ath_hw*,int ,int ) ;
 int ar9003_hw_set_channel_regs (struct ath_hw*,struct ath9k_channel*) ;
 int ar9550_hw_get_modes_txgain_index (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_apply_txpower (struct ath_hw*,struct ath9k_channel*,int) ;

__attribute__((used)) static int ar9003_hw_process_ini(struct ath_hw *ah,
     struct ath9k_channel *chan)
{
 unsigned int regWrites = 0, i;
 u32 modesIndex;

 switch (chan->chanmode) {
 case 136:
 case 135:
  modesIndex = 1;
  break;
 case 133:
 case 134:
  modesIndex = 2;
  break;
 case 131:
 case 130:
 case 132:
  modesIndex = 4;
  break;
 case 128:
 case 129:
  modesIndex = 3;
  break;

 default:
  return -EINVAL;
 }

 for (i = 0; i < ATH_INI_NUM_SPLIT; i++) {
  ar9003_hw_prog_ini(ah, &ah->iniSOC[i], modesIndex);
  ar9003_hw_prog_ini(ah, &ah->iniMac[i], modesIndex);
  ar9003_hw_prog_ini(ah, &ah->iniBB[i], modesIndex);
  ar9003_hw_prog_ini(ah, &ah->iniRadio[i], modesIndex);
  if (i == ATH_INI_POST && AR_SREV_9462_20(ah))
   ar9003_hw_prog_ini(ah,
        &ah->ini_radio_post_sys2ant,
        modesIndex);
 }

 REG_WRITE_ARRAY(&ah->iniModesRxGain, 1, regWrites);
 if (AR_SREV_9550(ah))
  REG_WRITE_ARRAY(&ah->ini_modes_rx_gain_bounds, modesIndex,
    regWrites);

 if (AR_SREV_9550(ah)) {
  int modes_txgain_index;

  modes_txgain_index = ar9550_hw_get_modes_txgain_index(ah, chan);
  if (modes_txgain_index < 0)
   return -EINVAL;

  REG_WRITE_ARRAY(&ah->iniModesTxGain, modes_txgain_index,
    regWrites);
 } else {
  REG_WRITE_ARRAY(&ah->iniModesTxGain, modesIndex, regWrites);
 }





 if (IS_CHAN_A_FAST_CLOCK(ah, chan))
  REG_WRITE_ARRAY(&ah->iniModesFastClock,
    modesIndex, regWrites);

 REG_WRITE_ARRAY(&ah->iniAdditional, 1, regWrites);

 if (chan->channel == 2484)
  ar9003_hw_prog_ini(ah, &ah->iniCckfirJapan2484, 1);

 if (AR_SREV_9462(ah) || AR_SREV_9565(ah))
  REG_WRITE(ah, AR_GLB_SWREG_DISCONT_MODE,
     AR_GLB_SWREG_DISCONT_EN_BT_WLAN);

 ah->modes_index = modesIndex;
 ar9003_hw_override_ini(ah);
 ar9003_hw_set_channel_regs(ah, chan);
 ar9003_hw_set_chain_masks(ah, ah->rxchainmask, ah->txchainmask);
 ath9k_hw_apply_txpower(ah, chan, 0);

 if (AR_SREV_9462(ah) || AR_SREV_9565(ah)) {
  if (REG_READ_FIELD(ah, AR_PHY_TX_IQCAL_CONTROL_0,
       AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL))
   ah->enabled_cals |= TX_IQ_CAL;
  else
   ah->enabled_cals &= ~TX_IQ_CAL;

  if (REG_READ(ah, AR_PHY_CL_CAL_CTL) & AR_PHY_CL_CAL_ENABLE)
   ah->enabled_cals |= TX_CL_CAL;
  else
   ah->enabled_cals &= ~TX_CL_CAL;
 }

 return 0;
}
