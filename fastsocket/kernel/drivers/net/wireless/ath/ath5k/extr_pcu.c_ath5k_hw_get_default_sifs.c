
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int band; } ;
struct ath5k_hw {int ah_bwmode; struct ieee80211_channel* ah_current_channel; } ;






 unsigned int AR5K_INIT_SIFS_DEFAULT_A ;
 unsigned int AR5K_INIT_SIFS_DEFAULT_BG ;
 unsigned int AR5K_INIT_SIFS_HALF_RATE ;
 unsigned int AR5K_INIT_SIFS_QUARTER_RATE ;
 unsigned int AR5K_INIT_SIFS_TURBO ;
 int IEEE80211_BAND_5GHZ ;

unsigned int
ath5k_hw_get_default_sifs(struct ath5k_hw *ah)
{
 struct ieee80211_channel *channel = ah->ah_current_channel;
 unsigned int sifs;

 switch (ah->ah_bwmode) {
 case 130:
  sifs = AR5K_INIT_SIFS_TURBO;
  break;
 case 131:
  sifs = AR5K_INIT_SIFS_HALF_RATE;
  break;
 case 129:
  sifs = AR5K_INIT_SIFS_QUARTER_RATE;
  break;
 case 128:
  sifs = AR5K_INIT_SIFS_DEFAULT_BG;
 default:
  if (channel->band == IEEE80211_BAND_5GHZ)
   sifs = AR5K_INIT_SIFS_DEFAULT_A;
  break;
 }

 return sifs;
}
