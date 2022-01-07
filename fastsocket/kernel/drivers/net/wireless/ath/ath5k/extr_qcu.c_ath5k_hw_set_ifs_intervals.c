
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_rate {int dummy; } ;
struct ieee80211_channel {scalar_t__ band; } ;
struct ath5k_hw {scalar_t__ ah_version; TYPE_1__* sbands; struct ieee80211_channel* ah_current_channel; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_2__ {struct ieee80211_rate* bitrates; } ;


 scalar_t__ AR5K_AR5210 ;
 int AR5K_DCU_GBL_IFS_EIFS ;
 int AR5K_DCU_GBL_IFS_MISC ;
 int AR5K_DCU_GBL_IFS_MISC_SIFS_DUR_USEC ;
 int AR5K_DCU_GBL_IFS_SIFS ;
 int AR5K_DCU_GBL_IFS_SLOT ;
 int AR5K_IFS0 ;
 int AR5K_IFS0_DIFS_S ;
 int AR5K_IFS1 ;
 int AR5K_IFS1_CS_EN_S ;
 int AR5K_IFS1_EIFS ;
 int AR5K_IFS1_PIFS ;
 int AR5K_INIT_CARR_SENSE_EN ;
 int AR5K_REG_SM (int,int ) ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,int) ;
 int AR5K_SLOT_TIME ;
 int AR5K_SLOT_TIME_MAX ;
 int EINVAL ;
 int IEEE80211_BAND_2GHZ ;
 scalar_t__ IEEE80211_BAND_5GHZ ;
 int ath5k_hw_get_default_sifs (struct ath5k_hw*) ;
 int ath5k_hw_get_frame_duration (struct ath5k_hw*,int,int,struct ieee80211_rate*,int) ;
 int ath5k_hw_htoclock (struct ath5k_hw*,int) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;

int ath5k_hw_set_ifs_intervals(struct ath5k_hw *ah, unsigned int slot_time)
{
 struct ieee80211_channel *channel = ah->ah_current_channel;
 enum ieee80211_band band;
 struct ieee80211_rate *rate;
 u32 ack_tx_time, eifs, eifs_clock, sifs, sifs_clock;
 u32 slot_time_clock = ath5k_hw_htoclock(ah, slot_time);

 if (slot_time < 6 || slot_time_clock > AR5K_SLOT_TIME_MAX)
  return -EINVAL;

 sifs = ath5k_hw_get_default_sifs(ah);
 sifs_clock = ath5k_hw_htoclock(ah, sifs - 2);
 if (channel->band == IEEE80211_BAND_5GHZ)
  band = IEEE80211_BAND_5GHZ;
 else
  band = IEEE80211_BAND_2GHZ;

 rate = &ah->sbands[band].bitrates[0];
 ack_tx_time = ath5k_hw_get_frame_duration(ah, band, 10, rate, 0);


 eifs = ack_tx_time + sifs + 2 * slot_time;
 eifs_clock = ath5k_hw_htoclock(ah, eifs);


 if (ah->ah_version == AR5K_AR5210) {
  u32 pifs, pifs_clock, difs, difs_clock;


  ath5k_hw_reg_write(ah, slot_time_clock, AR5K_SLOT_TIME);


  eifs_clock = AR5K_REG_SM(eifs_clock, AR5K_IFS1_EIFS);


  pifs = slot_time + sifs;
  pifs_clock = ath5k_hw_htoclock(ah, pifs);
  pifs_clock = AR5K_REG_SM(pifs_clock, AR5K_IFS1_PIFS);


  difs = sifs + 2 * slot_time;
  difs_clock = ath5k_hw_htoclock(ah, difs);


  ath5k_hw_reg_write(ah, (difs_clock <<
    AR5K_IFS0_DIFS_S) | sifs_clock,
    AR5K_IFS0);


  ath5k_hw_reg_write(ah, pifs_clock | eifs_clock |
    (AR5K_INIT_CARR_SENSE_EN << AR5K_IFS1_CS_EN_S),
    AR5K_IFS1);

  return 0;
 }


 ath5k_hw_reg_write(ah, slot_time_clock, AR5K_DCU_GBL_IFS_SLOT);


 ath5k_hw_reg_write(ah, eifs_clock, AR5K_DCU_GBL_IFS_EIFS);


 AR5K_REG_WRITE_BITS(ah, AR5K_DCU_GBL_IFS_MISC,
    AR5K_DCU_GBL_IFS_MISC_SIFS_DUR_USEC,
    sifs);


 ath5k_hw_reg_write(ah, sifs_clock, AR5K_DCU_GBL_IFS_SIFS);

 return 0;
}
