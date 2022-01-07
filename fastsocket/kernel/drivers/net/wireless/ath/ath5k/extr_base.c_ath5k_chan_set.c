
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_channel {int center_freq; } ;
struct ath5k_hw {TYPE_1__* curchan; } ;
struct TYPE_2__ {int center_freq; } ;


 int ATH5K_DBG (struct ath5k_hw*,int ,char*,int ,int ) ;
 int ATH5K_DEBUG_RESET ;
 int ath5k_reset (struct ath5k_hw*,struct ieee80211_channel*,int) ;

int
ath5k_chan_set(struct ath5k_hw *ah, struct ieee80211_channel *chan)
{
 ATH5K_DBG(ah, ATH5K_DEBUG_RESET,
    "channel set, resetting (%u -> %u MHz)\n",
    ah->curchan->center_freq, chan->center_freq);







 return ath5k_reset(ah, chan, 1);
}
