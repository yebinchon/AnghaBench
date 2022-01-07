
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ieee80211_channel {int dummy; } ;
struct ath5k_hw {int ah_ant_mode; int ah_def_ant; int ah_tx_ant; struct ieee80211_channel* ah_current_channel; } ;
 int AR5K_REG_DISABLE_BITS (struct ath5k_hw*,int ,int ) ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int) ;
 int AR5K_STA_ID1 ;
 int AR5K_STA_ID1_ANTENNA_SETTINGS ;
 int AR5K_STA_ID1_DEFAULT_ANTENNA ;
 int AR5K_STA_ID1_DESC_ANTENNA ;
 int AR5K_STA_ID1_RTS_DEF_ANTENNA ;
 int AR5K_STA_ID1_SELFGEN_DEF_ANT ;
 int ath5k_eeprom_mode_from_channel (struct ath5k_hw*,struct ieee80211_channel*) ;
 int ath5k_hw_set_antenna_switch (struct ath5k_hw*,int) ;
 int ath5k_hw_set_def_antenna (struct ath5k_hw*,int) ;
 int ath5k_hw_set_fast_div (struct ath5k_hw*,int,int) ;

void
ath5k_hw_set_antenna_mode(struct ath5k_hw *ah, u8 ant_mode)
{
 struct ieee80211_channel *channel = ah->ah_current_channel;
 bool use_def_for_tx, update_def_on_tx, use_def_for_rts, fast_div;
 bool use_def_for_sg;
 int ee_mode;
 u8 def_ant, tx_ant;
 u32 sta_id1 = 0;



 if (channel == ((void*)0)) {
  ah->ah_ant_mode = ant_mode;
  return;
 }

 def_ant = ah->ah_def_ant;

 ee_mode = ath5k_eeprom_mode_from_channel(ah, channel);

 switch (ant_mode) {
 case 133:
  tx_ant = 0;
  use_def_for_tx = 0;
  update_def_on_tx = 0;
  use_def_for_rts = 0;
  use_def_for_sg = 0;
  fast_div = 1;
  break;
 case 132:
  def_ant = 1;
  tx_ant = 1;
  use_def_for_tx = 1;
  update_def_on_tx = 0;
  use_def_for_rts = 1;
  use_def_for_sg = 1;
  fast_div = 0;
  break;
 case 131:
  def_ant = 2;
  tx_ant = 2;
  use_def_for_tx = 1;
  update_def_on_tx = 0;
  use_def_for_rts = 1;
  use_def_for_sg = 1;
  fast_div = 0;
  break;
 case 128:
  def_ant = 1;
  tx_ant = 0;
  use_def_for_tx = 1;
  update_def_on_tx = 1;
  use_def_for_rts = 1;
  use_def_for_sg = 1;
  fast_div = 1;
  break;
 case 130:
  tx_ant = 1;
  use_def_for_tx = 0;
  update_def_on_tx = 0;
  use_def_for_rts = 1;
  use_def_for_sg = 0;
  fast_div = 0;
  break;
 case 129:
  tx_ant = 1;
  use_def_for_tx = 1;
  update_def_on_tx = 0;
  use_def_for_rts = 1;
  use_def_for_sg = 0;
  fast_div = 1;
  break;
 case 134:
  def_ant = 1;
  tx_ant = 2;
  use_def_for_tx = 0;
  update_def_on_tx = 0;
  use_def_for_rts = 0;
  use_def_for_sg = 0;
  fast_div = 0;
  break;
 default:
  return;
 }

 ah->ah_tx_ant = tx_ant;
 ah->ah_ant_mode = ant_mode;
 ah->ah_def_ant = def_ant;

 sta_id1 |= use_def_for_tx ? AR5K_STA_ID1_DEFAULT_ANTENNA : 0;
 sta_id1 |= update_def_on_tx ? AR5K_STA_ID1_DESC_ANTENNA : 0;
 sta_id1 |= use_def_for_rts ? AR5K_STA_ID1_RTS_DEF_ANTENNA : 0;
 sta_id1 |= use_def_for_sg ? AR5K_STA_ID1_SELFGEN_DEF_ANT : 0;

 AR5K_REG_DISABLE_BITS(ah, AR5K_STA_ID1, AR5K_STA_ID1_ANTENNA_SETTINGS);

 if (sta_id1)
  AR5K_REG_ENABLE_BITS(ah, AR5K_STA_ID1, sta_id1);

 ath5k_hw_set_antenna_switch(ah, ee_mode);


 ath5k_hw_set_fast_div(ah, ee_mode, fast_div);
 ath5k_hw_set_def_antenna(ah, def_ant);
}
