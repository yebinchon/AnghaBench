
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_channel {scalar_t__ hw_value; scalar_t__ center_freq; } ;
struct ath5k_rate_pcal_info {int dummy; } ;
struct TYPE_2__ {int txp_requested; scalar_t__ txp_tpc; int txp_setup; } ;
struct ath5k_hw {int ah_radio; TYPE_1__ ah_txpower; struct ieee80211_channel* ah_current_channel; } ;


 int AR5K_PHY_TXPOWER_RATE1 ;
 int AR5K_PHY_TXPOWER_RATE2 ;
 int AR5K_PHY_TXPOWER_RATE3 ;
 int AR5K_PHY_TXPOWER_RATE4 ;
 int AR5K_PHY_TXPOWER_RATE_MAX ;
 int AR5K_PHY_TXPOWER_RATE_MAX_TPC_ENABLE ;
 int AR5K_PWRTABLE_LINEAR_PCDAC ;
 int AR5K_PWRTABLE_PWR_TO_PCDAC ;
 int AR5K_PWRTABLE_PWR_TO_PDADC ;
 int AR5K_REG_MS (int,int ) ;
 int AR5K_TPC ;
 int AR5K_TPC_ACK ;
 int AR5K_TPC_CHIRP ;
 int AR5K_TPC_CTS ;
 int AR5K_TUNE_MAX_TXPOWER ;
 scalar_t__ AR5K_TUNE_TPC_TXPOWER ;
 int AR5K_TXPOWER_CCK (int,int) ;
 int AR5K_TXPOWER_OFDM (int,int) ;
 int ATH5K_ERR (struct ath5k_hw*,char*,int) ;
 int EINVAL ;
 int ath5k_eeprom_mode_from_channel (struct ath5k_hw*,struct ieee80211_channel*) ;
 int ath5k_get_max_ctl_power (struct ath5k_hw*,struct ieee80211_channel*) ;
 int ath5k_get_rate_pcal_data (struct ath5k_hw*,struct ieee80211_channel*,struct ath5k_rate_pcal_info*) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int) ;
 int ath5k_setup_channel_powertable (struct ath5k_hw*,struct ieee80211_channel*,int,int) ;
 int ath5k_setup_rate_powertable (struct ath5k_hw*,int,struct ath5k_rate_pcal_info*,int) ;
 int ath5k_write_channel_powertable (struct ath5k_hw*,int,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
ath5k_hw_txpower(struct ath5k_hw *ah, struct ieee80211_channel *channel,
   u8 txpower)
{
 struct ath5k_rate_pcal_info rate_info;
 struct ieee80211_channel *curr_channel = ah->ah_current_channel;
 int ee_mode;
 u8 type;
 int ret;

 if (txpower > AR5K_TUNE_MAX_TXPOWER) {
  ATH5K_ERR(ah, "invalid tx power: %u\n", txpower);
  return -EINVAL;
 }

 ee_mode = ath5k_eeprom_mode_from_channel(ah, channel);


 switch (ah->ah_radio) {
 case 131:

  return 0;
 case 130:
  type = AR5K_PWRTABLE_PWR_TO_PCDAC;
  break;
 case 129:
  type = AR5K_PWRTABLE_LINEAR_PCDAC;
  break;
 case 133:
 case 128:
 case 135:
 case 134:
 case 132:
  type = AR5K_PWRTABLE_PWR_TO_PDADC;
  break;
 default:
  return -EINVAL;
 }





 if (!ah->ah_txpower.txp_setup ||
     (channel->hw_value != curr_channel->hw_value) ||
     (channel->center_freq != curr_channel->center_freq)) {


  int requested_txpower = ah->ah_txpower.txp_requested;

  memset(&ah->ah_txpower, 0, sizeof(ah->ah_txpower));


  ah->ah_txpower.txp_tpc = AR5K_TUNE_TPC_TXPOWER;

  ah->ah_txpower.txp_requested = requested_txpower;


  ret = ath5k_setup_channel_powertable(ah, channel,
       ee_mode, type);
  if (ret)
   return ret;
 }


 ath5k_write_channel_powertable(ah, ee_mode, type);


 ath5k_get_max_ctl_power(ah, channel);
 ath5k_get_rate_pcal_data(ah, channel, &rate_info);


 ath5k_setup_rate_powertable(ah, txpower, &rate_info, ee_mode);


 ath5k_hw_reg_write(ah, AR5K_TXPOWER_OFDM(3, 24) |
  AR5K_TXPOWER_OFDM(2, 16) | AR5K_TXPOWER_OFDM(1, 8) |
  AR5K_TXPOWER_OFDM(0, 0), AR5K_PHY_TXPOWER_RATE1);

 ath5k_hw_reg_write(ah, AR5K_TXPOWER_OFDM(7, 24) |
  AR5K_TXPOWER_OFDM(6, 16) | AR5K_TXPOWER_OFDM(5, 8) |
  AR5K_TXPOWER_OFDM(4, 0), AR5K_PHY_TXPOWER_RATE2);

 ath5k_hw_reg_write(ah, AR5K_TXPOWER_CCK(10, 24) |
  AR5K_TXPOWER_CCK(9, 16) | AR5K_TXPOWER_CCK(15, 8) |
  AR5K_TXPOWER_CCK(8, 0), AR5K_PHY_TXPOWER_RATE3);

 ath5k_hw_reg_write(ah, AR5K_TXPOWER_CCK(14, 24) |
  AR5K_TXPOWER_CCK(13, 16) | AR5K_TXPOWER_CCK(12, 8) |
  AR5K_TXPOWER_CCK(11, 0), AR5K_PHY_TXPOWER_RATE4);


 if (ah->ah_txpower.txp_tpc) {
  ath5k_hw_reg_write(ah, AR5K_PHY_TXPOWER_RATE_MAX_TPC_ENABLE |
   AR5K_TUNE_MAX_TXPOWER, AR5K_PHY_TXPOWER_RATE_MAX);

  ath5k_hw_reg_write(ah,
   AR5K_REG_MS(AR5K_TUNE_MAX_TXPOWER, AR5K_TPC_ACK) |
   AR5K_REG_MS(AR5K_TUNE_MAX_TXPOWER, AR5K_TPC_CTS) |
   AR5K_REG_MS(AR5K_TUNE_MAX_TXPOWER, AR5K_TPC_CHIRP),
   AR5K_TPC);
 } else {
  ath5k_hw_reg_write(ah, AR5K_PHY_TXPOWER_RATE_MAX |
   AR5K_TUNE_MAX_TXPOWER, AR5K_PHY_TXPOWER_RATE_MAX);
 }

 return 0;
}
