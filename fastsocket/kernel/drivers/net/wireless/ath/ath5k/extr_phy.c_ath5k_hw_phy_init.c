
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct ieee80211_channel {scalar_t__ hw_value; int center_freq; int band; } ;
struct TYPE_2__ {int txp_requested; } ;
struct ath5k_hw {scalar_t__ ah_version; scalar_t__ ah_mac_srev; scalar_t__ ah_radio; int ah_iq_cal_needed; int ah_ant_mode; TYPE_1__ ah_txpower; struct ieee80211_channel* ah_current_channel; } ;


 scalar_t__ AR5K_AR5210 ;
 scalar_t__ AR5K_AR5212 ;
 scalar_t__ AR5K_MODE_11B ;
 int AR5K_PHY_ACT ;
 int AR5K_PHY_ACT_DISABLE ;
 int AR5K_PHY_ACT_ENABLE ;
 int AR5K_PHY_ADC_TEST ;
 int AR5K_PHY_AGCCTL ;
 int AR5K_PHY_AGCCTL_CAL ;
 int AR5K_PHY_AGCCTL_NF ;
 int AR5K_PHY_IQ ;
 int AR5K_PHY_IQ_CAL_NUM_LOG_MAX ;
 int AR5K_PHY_IQ_RUN ;
 int AR5K_PHY_RFBUS_GRANT ;
 int AR5K_PHY_RFBUS_REQ ;
 int AR5K_PHY_RFBUS_REQ_REQUEST ;
 int AR5K_PHY_TST1 ;
 int AR5K_PHY_TST1_TXHOLD ;
 int AR5K_REG_DISABLE_BITS (struct ath5k_hw*,int ,int) ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int) ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,int) ;
 scalar_t__ AR5K_RF5111 ;
 scalar_t__ AR5K_SREV_AR5424 ;
 int AR5K_TUNE_MAX_TXPOWER ;
 int AR5K_TXCFG ;
 int AR5K_TXCFG_B_MODE ;
 int ATH5K_ERR (struct ath5k_hw*,char*,int ) ;
 int EINVAL ;
 int EIO ;
 int ath5k_hw_channel (struct ath5k_hw*,struct ieee80211_channel*) ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;
 scalar_t__ ath5k_hw_register_timeout (struct ath5k_hw*,int ,int,int ,int) ;
 int ath5k_hw_rfgain_init (struct ath5k_hw*,int ) ;
 int ath5k_hw_rfregs_init (struct ath5k_hw*,struct ieee80211_channel*,scalar_t__) ;
 int ath5k_hw_set_antenna_mode (struct ath5k_hw*,int ) ;
 int ath5k_hw_set_spur_mitigation_filter (struct ath5k_hw*,struct ieee80211_channel*) ;
 int ath5k_hw_txpower (struct ath5k_hw*,struct ieee80211_channel*,int) ;
 int ath5k_hw_wait_for_synth (struct ath5k_hw*,struct ieee80211_channel*) ;
 int ath5k_hw_write_ofdm_timings (struct ath5k_hw*,struct ieee80211_channel*) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

int
ath5k_hw_phy_init(struct ath5k_hw *ah, struct ieee80211_channel *channel,
        u8 mode, bool fast)
{
 struct ieee80211_channel *curr_channel;
 int ret, i;
 u32 phy_tst1;
 ret = 0;







 curr_channel = ah->ah_current_channel;
 if (fast && (channel->hw_value != curr_channel->hw_value))
  return -EINVAL;





 if (fast) {
  AR5K_REG_ENABLE_BITS(ah, AR5K_PHY_RFBUS_REQ,
        AR5K_PHY_RFBUS_REQ_REQUEST);
  for (i = 0; i < 100; i++) {
   if (ath5k_hw_reg_read(ah, AR5K_PHY_RFBUS_GRANT))
    break;
   udelay(5);
  }

  if (i >= 100)
   return -EIO;


  ret = ath5k_hw_channel(ah, channel);
  if (ret)
   return ret;

  ath5k_hw_wait_for_synth(ah, channel);
 }
 ret = ath5k_hw_txpower(ah, channel, ah->ah_txpower.txp_requested ?
     ah->ah_txpower.txp_requested * 2 :
     AR5K_TUNE_MAX_TXPOWER);
 if (ret)
  return ret;


 if (ah->ah_version == AR5K_AR5212 &&
  channel->hw_value != AR5K_MODE_11B) {

  ret = ath5k_hw_write_ofdm_timings(ah, channel);
  if (ret)
   return ret;




  if (ah->ah_mac_srev >= AR5K_SREV_AR5424)
   ath5k_hw_set_spur_mitigation_filter(ah,
           channel);
 }
 if (fast) {



  AR5K_REG_DISABLE_BITS(ah, AR5K_PHY_RFBUS_REQ,
        AR5K_PHY_RFBUS_REQ_REQUEST);




  AR5K_REG_ENABLE_BITS(ah, AR5K_PHY_AGCCTL,
     AR5K_PHY_AGCCTL_NF);

  return ret;
 }







 if (ah->ah_version != AR5K_AR5210) {





  ret = ath5k_hw_rfgain_init(ah, channel->band);
  if (ret)
   return ret;

  usleep_range(1000, 1500);




  ret = ath5k_hw_rfregs_init(ah, channel, mode);
  if (ret)
   return ret;



  if (ah->ah_radio == AR5K_RF5111) {
   if (mode == AR5K_MODE_11B)
    AR5K_REG_ENABLE_BITS(ah, AR5K_TXCFG,
        AR5K_TXCFG_B_MODE);
   else
    AR5K_REG_DISABLE_BITS(ah, AR5K_TXCFG,
        AR5K_TXCFG_B_MODE);
  }

 } else if (ah->ah_version == AR5K_AR5210) {
  usleep_range(1000, 1500);

  ath5k_hw_reg_write(ah, AR5K_PHY_ACT_DISABLE, AR5K_PHY_ACT);
  usleep_range(1000, 1500);
 }


 ret = ath5k_hw_channel(ah, channel);
 if (ret)
  return ret;






 ath5k_hw_reg_write(ah, AR5K_PHY_ACT_ENABLE, AR5K_PHY_ACT);

 ath5k_hw_wait_for_synth(ah, channel);





 phy_tst1 = ath5k_hw_reg_read(ah, AR5K_PHY_TST1);
 ath5k_hw_reg_write(ah, AR5K_PHY_TST1_TXHOLD, AR5K_PHY_TST1);
 for (i = 0; i <= 20; i++) {
  if (!(ath5k_hw_reg_read(ah, AR5K_PHY_ADC_TEST) & 0x10))
   break;
  usleep_range(200, 250);
 }
 ath5k_hw_reg_write(ah, phy_tst1, AR5K_PHY_TST1);
 AR5K_REG_ENABLE_BITS(ah, AR5K_PHY_AGCCTL,
    AR5K_PHY_AGCCTL_CAL | AR5K_PHY_AGCCTL_NF);



 ah->ah_iq_cal_needed = 0;
 if (!(mode == AR5K_MODE_11B)) {
  ah->ah_iq_cal_needed = 1;
  AR5K_REG_WRITE_BITS(ah, AR5K_PHY_IQ,
    AR5K_PHY_IQ_CAL_NUM_LOG_MAX, 15);
  AR5K_REG_ENABLE_BITS(ah, AR5K_PHY_IQ,
    AR5K_PHY_IQ_RUN);
 }



 if (ath5k_hw_register_timeout(ah, AR5K_PHY_AGCCTL,
   AR5K_PHY_AGCCTL_CAL, 0, 0)) {
  ATH5K_ERR(ah, "gain calibration timeout (%uMHz)\n",
   channel->center_freq);
 }


 ath5k_hw_set_antenna_mode(ah, ah->ah_ant_mode);

 return ret;
}
