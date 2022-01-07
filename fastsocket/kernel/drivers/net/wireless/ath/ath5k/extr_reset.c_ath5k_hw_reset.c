
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ieee80211_channel {int hw_value; int center_freq; } ;
struct ath5k_hw {scalar_t__ ah_radio; scalar_t__ ah_version; scalar_t__ ah_mac_srev; scalar_t__ ah_use_32khz_clock; int * ah_rf_banks; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 scalar_t__ AR5K_AR5210 ;
 scalar_t__ AR5K_AR5211 ;
 scalar_t__ AR5K_AR5212 ;
 int AR5K_BEACON ;
 int AR5K_BEACON_ENABLE ;
 int AR5K_GPIOCR ;
 int AR5K_GPIODO ;



 int AR5K_PCICFG ;
 int AR5K_PCICFG_LEDSTATE ;
 int AR5K_PHY (int ) ;
 int AR5K_PHY_SHIFT_5GHZ ;
 int AR5K_QUEUE_DCU_SEQNUM (int) ;
 int AR5K_REG_DISABLE_BITS (struct ath5k_hw*,int ,int ) ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int) ;
 scalar_t__ AR5K_RF2413 ;
 scalar_t__ AR5K_RF5112 ;
 scalar_t__ AR5K_RF5413 ;
 scalar_t__ AR5K_SREV_AR5211 ;
 int AR5K_TSF_L32 ;
 int AR5K_TSF_U32 ;
 int ATH5K_DBG (struct ath5k_hw*,int ,char*) ;
 int ATH5K_DEBUG_RESET ;
 int ATH5K_ERR (struct ath5k_hw*,char*,...) ;
 int EINVAL ;
 int NL80211_IFTYPE_AP ;
 int ath5k_hw_commit_eeprom_settings (struct ath5k_hw*,struct ieee80211_channel*) ;
 int ath5k_hw_dma_init (struct ath5k_hw*) ;
 int ath5k_hw_dma_stop (struct ath5k_hw*) ;
 int ath5k_hw_gainf_calibrate (struct ath5k_hw*) ;
 int ath5k_hw_init_core_clock (struct ath5k_hw*) ;
 int ath5k_hw_init_queues (struct ath5k_hw*) ;
 int ath5k_hw_nic_wakeup (struct ath5k_hw*,struct ieee80211_channel*) ;
 int ath5k_hw_pcu_init (struct ath5k_hw*,int) ;
 int ath5k_hw_phy_init (struct ath5k_hw*,struct ieee80211_channel*,int,int) ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;
 int ath5k_hw_reset_tsf (struct ath5k_hw*) ;
 int ath5k_hw_set_sleep_clock (struct ath5k_hw*,int) ;
 int ath5k_hw_stop_rx_pcu (struct ath5k_hw*) ;
 int ath5k_hw_tweak_initval_settings (struct ath5k_hw*,struct ieee80211_channel*) ;
 int ath5k_hw_write_initvals (struct ath5k_hw*,int,int) ;

int
ath5k_hw_reset(struct ath5k_hw *ah, enum nl80211_iftype op_mode,
  struct ieee80211_channel *channel, bool fast, bool skip_pcu)
{
 u32 s_seq[10], s_led[3], tsf_up, tsf_lo;
 u8 mode;
 int i, ret;

 tsf_up = 0;
 tsf_lo = 0;
 mode = 0;






 if (fast && (ah->ah_radio != AR5K_RF2413) &&
 (ah->ah_radio != AR5K_RF5413))
  fast = 0;




 if (ah->ah_version == AR5K_AR5212)
  ath5k_hw_set_sleep_clock(ah, 0);




 ath5k_hw_stop_rx_pcu(ah);







 ret = ath5k_hw_dma_stop(ah);



 if (ret && fast) {
  ATH5K_DBG(ah, ATH5K_DEBUG_RESET,
   "DMA didn't stop, falling back to normal reset\n");
  fast = 0;


  ret = 0;
 }

 mode = channel->hw_value;
 switch (mode) {
 case 130:
  break;
 case 128:
  if (ah->ah_version <= AR5K_AR5211) {
   ATH5K_ERR(ah,
    "G mode not available on 5210/5211");
   return -EINVAL;
  }
  break;
 case 129:
  if (ah->ah_version < AR5K_AR5211) {
   ATH5K_ERR(ah,
    "B mode not available on 5210");
   return -EINVAL;
  }
  break;
 default:
  ATH5K_ERR(ah,
   "invalid channel: %d\n", channel->center_freq);
  return -EINVAL;
 }





 if (fast) {
  ret = ath5k_hw_phy_init(ah, channel, mode, 1);
  if (ret) {
   ATH5K_DBG(ah, ATH5K_DEBUG_RESET,
    "fast chan change failed, falling back to normal reset\n");


   ret = 0;
  } else {
   ATH5K_DBG(ah, ATH5K_DEBUG_RESET,
    "fast chan change successful\n");
   return 0;
  }
 }




 if (ah->ah_version != AR5K_AR5210) {





  if (ah->ah_mac_srev < AR5K_SREV_AR5211) {

   for (i = 0; i < 10; i++)
    s_seq[i] = ath5k_hw_reg_read(ah,
     AR5K_QUEUE_DCU_SEQNUM(i));

  } else {
   s_seq[0] = ath5k_hw_reg_read(ah,
     AR5K_QUEUE_DCU_SEQNUM(0));
  }
  if (ah->ah_version == AR5K_AR5211) {
   tsf_up = ath5k_hw_reg_read(ah, AR5K_TSF_U32);
   tsf_lo = ath5k_hw_reg_read(ah, AR5K_TSF_L32);
  }
 }



 s_led[0] = ath5k_hw_reg_read(ah, AR5K_PCICFG) &
     AR5K_PCICFG_LEDSTATE;
 s_led[1] = ath5k_hw_reg_read(ah, AR5K_GPIOCR);
 s_led[2] = ath5k_hw_reg_read(ah, AR5K_GPIODO);







 if (ah->ah_version == AR5K_AR5212 &&
 (ah->ah_radio <= AR5K_RF5112)) {
  if (!fast && ah->ah_rf_banks != ((void*)0))
    ath5k_hw_gainf_calibrate(ah);
 }


 ret = ath5k_hw_nic_wakeup(ah, channel);
 if (ret)
  return ret;


 if (ah->ah_mac_srev >= AR5K_SREV_AR5211)
  ath5k_hw_reg_write(ah, AR5K_PHY_SHIFT_5GHZ, AR5K_PHY(0));
 else
  ath5k_hw_reg_write(ah, AR5K_PHY_SHIFT_5GHZ | 0x40,
       AR5K_PHY(0));


 ret = ath5k_hw_write_initvals(ah, mode, skip_pcu);
 if (ret)
  return ret;


 ath5k_hw_init_core_clock(ah);






 ath5k_hw_tweak_initval_settings(ah, channel);


 ath5k_hw_commit_eeprom_settings(ah, channel);







 if (ah->ah_version != AR5K_AR5210) {
  if (ah->ah_mac_srev < AR5K_SREV_AR5211) {
   for (i = 0; i < 10; i++)
    ath5k_hw_reg_write(ah, s_seq[i],
     AR5K_QUEUE_DCU_SEQNUM(i));
  } else {
   ath5k_hw_reg_write(ah, s_seq[0],
    AR5K_QUEUE_DCU_SEQNUM(0));
  }

  if (ah->ah_version == AR5K_AR5211) {
   ath5k_hw_reg_write(ah, tsf_up, AR5K_TSF_U32);
   ath5k_hw_reg_write(ah, tsf_lo, AR5K_TSF_L32);
  }
 }


 AR5K_REG_ENABLE_BITS(ah, AR5K_PCICFG, s_led[0]);


 ath5k_hw_reg_write(ah, s_led[1], AR5K_GPIOCR);
 ath5k_hw_reg_write(ah, s_led[2], AR5K_GPIODO);




 ath5k_hw_pcu_init(ah, op_mode);




 ret = ath5k_hw_phy_init(ah, channel, mode, 0);
 if (ret) {
  ATH5K_ERR(ah,
   "failed to initialize PHY (%i) !\n", ret);
  return ret;
 }




 ret = ath5k_hw_init_queues(ah);
 if (ret)
  return ret;





 ath5k_hw_dma_init(ah);
 if (ah->ah_use_32khz_clock && ah->ah_version == AR5K_AR5212 &&
     op_mode != NL80211_IFTYPE_AP)
  ath5k_hw_set_sleep_clock(ah, 1);




 AR5K_REG_DISABLE_BITS(ah, AR5K_BEACON, AR5K_BEACON_ENABLE);
 ath5k_hw_reset_tsf(ah);
 return 0;
}
