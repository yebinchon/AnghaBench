
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int hw_value; } ;
struct ath5k_hw {int ah_bwmode; int ah_short_slot; struct ieee80211_channel* ah_current_channel; } ;






 unsigned int AR5K_INIT_SLOT_TIME_B ;
 unsigned int AR5K_INIT_SLOT_TIME_DEFAULT ;
 unsigned int AR5K_INIT_SLOT_TIME_HALF_RATE ;
 unsigned int AR5K_INIT_SLOT_TIME_QUARTER_RATE ;
 unsigned int AR5K_INIT_SLOT_TIME_TURBO ;
 int AR5K_MODE_11B ;

unsigned int
ath5k_hw_get_default_slottime(struct ath5k_hw *ah)
{
 struct ieee80211_channel *channel = ah->ah_current_channel;
 unsigned int slot_time;

 switch (ah->ah_bwmode) {
 case 130:
  slot_time = AR5K_INIT_SLOT_TIME_TURBO;
  break;
 case 131:
  slot_time = AR5K_INIT_SLOT_TIME_HALF_RATE;
  break;
 case 129:
  slot_time = AR5K_INIT_SLOT_TIME_QUARTER_RATE;
  break;
 case 128:
 default:
  slot_time = AR5K_INIT_SLOT_TIME_DEFAULT;
  if ((channel->hw_value == AR5K_MODE_11B) && !ah->ah_short_slot)
   slot_time = AR5K_INIT_SLOT_TIME_B;
  break;
 }

 return slot_time;
}
