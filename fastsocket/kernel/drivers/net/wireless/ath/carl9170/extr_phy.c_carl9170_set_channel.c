
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_channel {scalar_t__ band; int center_freq; } ;
struct carl9170_rf_init_result {int ret; } ;
struct carl9170_rf_init {int ht_settings; void* finiteLoopCount; void* delta_slope_coeff_man_shgi; void* delta_slope_coeff_exp_shgi; void* delta_slope_coeff_man; void* delta_slope_coeff_exp; void* freq; } ;
struct carl9170_phy_freq_params {int coeff_exp; int coeff_man; int coeff_exp_shgi; int coeff_man_shgi; } ;
struct TYPE_3__ {int tx_mask; } ;
struct ar9170 {int chan_fail; int heavy_clip; int ht_settings; struct ieee80211_channel* channel; TYPE_2__* hw; int total_chan_fail; TYPE_1__ eeprom; } ;
typedef int rf_res ;
typedef int rf ;
typedef enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;
typedef enum carl9170_bw { ____Placeholder_carl9170_bw } carl9170_bw ;
struct TYPE_4__ {int wiphy; int conf; } ;


 int AR9170_PHY_REG_HEAVY_CLIP_ENABLE ;
 int AR9170_PHY_REG_TURBO ;
 int AR9170_PHY_TURBO_FC_DYN2040_EN ;
 int AR9170_PHY_TURBO_FC_DYN2040_PRI_CH ;
 int AR9170_PHY_TURBO_FC_HT_EN ;
 int AR9170_PHY_TURBO_FC_SHORT_GI_40 ;
 int AR9170_PHY_TURBO_FC_SINGLE_HT_LTF1 ;
 int AR9170_PHY_TURBO_FC_WALSH ;
 int AR9170_PWR_REG_RESET ;
 int AR9170_PWR_RESET_BB_COLD_RESET ;
 int BUG () ;
 int CARL9170FW_PHY_HT_DYN2040 ;
 int CARL9170FW_PHY_HT_ENABLE ;
 int CARL9170FW_PHY_HT_EXT_CHAN_OFF ;



 int CARL9170_CMD_FREQ_START ;
 int CARL9170_CMD_RF_INIT ;
 int CARL9170_RR_TOO_MANY_PHY_ERRORS ;
 int ENOSYS ;
 scalar_t__ IEEE80211_BAND_5GHZ ;
 int SET_VAL (int ,int,int) ;
 int carl9170_exec_cmd (struct ar9170*,int ,int,struct carl9170_rf_init*,int,struct carl9170_rf_init_result*) ;
 struct carl9170_phy_freq_params* carl9170_get_hw_dyn_params (struct ieee80211_channel*,int) ;
 int carl9170_init_phy (struct ar9170*,scalar_t__) ;
 int carl9170_init_rf_bank4_pwr (struct ar9170*,int,int,int) ;
 int carl9170_init_rf_banks_0_7 (struct ar9170*,int) ;
 int carl9170_restart (struct ar9170*,int ) ;
 int carl9170_set_freq_cal_data (struct ar9170*,struct ieee80211_channel*) ;
 int carl9170_set_mac_tpc (struct ar9170*,struct ieee80211_channel*) ;
 int carl9170_set_power_cal (struct ar9170*,int,int) ;
 int carl9170_write_reg (struct ar9170*,int ,int) ;
 scalar_t__ conf_is_ht (int *) ;
 scalar_t__ conf_is_ht40 (int *) ;
 void* cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 scalar_t__ net_ratelimit () ;
 int nl80211_to_carl (int) ;
 int wiphy_err (int ,char*,...) ;

int carl9170_set_channel(struct ar9170 *ar, struct ieee80211_channel *channel,
    enum nl80211_channel_type _bw)
{
 const struct carl9170_phy_freq_params *freqpar;
 struct carl9170_rf_init_result rf_res;
 struct carl9170_rf_init rf;
 u32 tmp, offs = 0, new_ht = 0;
 int err;
 enum carl9170_bw bw;
 struct ieee80211_channel *old_channel = ((void*)0);

 bw = nl80211_to_carl(_bw);

 if (conf_is_ht(&ar->hw->conf))
  new_ht |= CARL9170FW_PHY_HT_ENABLE;

 if (conf_is_ht40(&ar->hw->conf))
  new_ht |= CARL9170FW_PHY_HT_DYN2040;


 if (ar->channel) {
  old_channel = ar->channel;
  ar->channel = ((void*)0);
 }


 err = carl9170_write_reg(ar, AR9170_PWR_REG_RESET,
     AR9170_PWR_RESET_BB_COLD_RESET);
 if (err)
  return err;

 err = carl9170_write_reg(ar, AR9170_PWR_REG_RESET, 0x0);
 if (err)
  return err;

 err = carl9170_init_phy(ar, channel->band);
 if (err)
  return err;

 err = carl9170_init_rf_banks_0_7(ar,
      channel->band == IEEE80211_BAND_5GHZ);
 if (err)
  return err;

 err = carl9170_exec_cmd(ar, CARL9170_CMD_FREQ_START, 0, ((void*)0), 0, ((void*)0));
 if (err)
  return err;

 err = carl9170_write_reg(ar, AR9170_PHY_REG_HEAVY_CLIP_ENABLE,
     0x200);
 if (err)
  return err;

 err = carl9170_init_rf_bank4_pwr(ar,
      channel->band == IEEE80211_BAND_5GHZ,
      channel->center_freq, bw);
 if (err)
  return err;

 tmp = AR9170_PHY_TURBO_FC_SINGLE_HT_LTF1 |
       AR9170_PHY_TURBO_FC_HT_EN;

 switch (bw) {
 case 130:
  break;
 case 128:
  tmp |= AR9170_PHY_TURBO_FC_DYN2040_EN |
         AR9170_PHY_TURBO_FC_SHORT_GI_40;
  offs = 3;
  break;
 case 129:
  tmp |= AR9170_PHY_TURBO_FC_DYN2040_EN |
         AR9170_PHY_TURBO_FC_SHORT_GI_40 |
         AR9170_PHY_TURBO_FC_DYN2040_PRI_CH;
  offs = 1;
  break;
 default:
  BUG();
  return -ENOSYS;
 }

 if (ar->eeprom.tx_mask != 1)
  tmp |= AR9170_PHY_TURBO_FC_WALSH;

 err = carl9170_write_reg(ar, AR9170_PHY_REG_TURBO, tmp);
 if (err)
  return err;

 err = carl9170_set_freq_cal_data(ar, channel);
 if (err)
  return err;

 carl9170_set_power_cal(ar, channel->center_freq, bw);

 err = carl9170_set_mac_tpc(ar, channel);
 if (err)
  return err;

 freqpar = carl9170_get_hw_dyn_params(channel, bw);

 rf.ht_settings = new_ht;
 if (conf_is_ht40(&ar->hw->conf))
  SET_VAL(CARL9170FW_PHY_HT_EXT_CHAN_OFF, rf.ht_settings, offs);

 rf.freq = cpu_to_le32(channel->center_freq * 1000);
 rf.delta_slope_coeff_exp = cpu_to_le32(freqpar->coeff_exp);
 rf.delta_slope_coeff_man = cpu_to_le32(freqpar->coeff_man);
 rf.delta_slope_coeff_exp_shgi = cpu_to_le32(freqpar->coeff_exp_shgi);
 rf.delta_slope_coeff_man_shgi = cpu_to_le32(freqpar->coeff_man_shgi);
 rf.finiteLoopCount = cpu_to_le32(2000);
 err = carl9170_exec_cmd(ar, CARL9170_CMD_RF_INIT, sizeof(rf), &rf,
    sizeof(rf_res), &rf_res);
 if (err)
  return err;

 err = le32_to_cpu(rf_res.ret);
 if (err != 0) {
  ar->chan_fail++;
  ar->total_chan_fail++;

  wiphy_err(ar->hw->wiphy, "channel change: %d -> %d "
     "failed (%d).\n", old_channel ?
     old_channel->center_freq : -1, channel->center_freq,
     err);

  if (ar->chan_fail > 3) {






   carl9170_restart(ar, CARL9170_RR_TOO_MANY_PHY_ERRORS);
   return 0;
  }

  err = carl9170_set_channel(ar, channel, _bw);
  if (err)
   return err;
 } else {
  ar->chan_fail = 0;
 }

 if (ar->heavy_clip) {
  err = carl9170_write_reg(ar, AR9170_PHY_REG_HEAVY_CLIP_ENABLE,
      0x200 | ar->heavy_clip);
  if (err) {
   if (net_ratelimit()) {
    wiphy_err(ar->hw->wiphy, "failed to set "
           "heavy clip\n");
   }

   return err;
  }
 }

 ar->channel = channel;
 ar->ht_settings = new_ht;
 return 0;
}
