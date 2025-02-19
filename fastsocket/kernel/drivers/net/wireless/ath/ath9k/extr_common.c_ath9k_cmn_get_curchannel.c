
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_4__ {struct ieee80211_channel* chan; } ;
struct TYPE_3__ {TYPE_2__ chandef; } ;
struct ieee80211_hw {TYPE_1__ conf; } ;
struct ieee80211_channel {size_t hw_value; } ;
struct ath_hw {struct ath9k_channel* channels; } ;
struct ath9k_channel {int dummy; } ;


 int ath9k_cmn_update_ichannel (struct ath9k_channel*,struct ieee80211_channel*,int ) ;
 int cfg80211_get_chandef_type (TYPE_2__*) ;

struct ath9k_channel *ath9k_cmn_get_curchannel(struct ieee80211_hw *hw,
            struct ath_hw *ah)
{
 struct ieee80211_channel *curchan = hw->conf.chandef.chan;
 struct ath9k_channel *channel;
 u8 chan_idx;

 chan_idx = curchan->hw_value;
 channel = &ah->channels[chan_idx];
 ath9k_cmn_update_ichannel(channel, curchan,
      cfg80211_get_chandef_type(&hw->conf.chandef));

 return channel;
}
