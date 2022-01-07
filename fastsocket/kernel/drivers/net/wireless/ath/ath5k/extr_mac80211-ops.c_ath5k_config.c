
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int chan; } ;
struct ieee80211_conf {int power_level; int short_frame_max_tx_count; int long_frame_max_tx_count; TYPE_1__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct ath5k_hw* priv; } ;
struct TYPE_7__ {int q_tx_num; } ;
struct TYPE_8__ {TYPE_3__ cap_queues; } ;
struct TYPE_6__ {int txp_requested; } ;
struct ath5k_hw {int lock; int ah_ant_mode; TYPE_4__ ah_capabilities; int ah_retry_short; int ah_retry_long; TYPE_2__ ah_txpower; } ;


 int IEEE80211_CONF_CHANGE_CHANNEL ;
 int IEEE80211_CONF_CHANGE_POWER ;
 int IEEE80211_CONF_CHANGE_RETRY_LIMITS ;
 int ath5k_chan_set (struct ath5k_hw*,int ) ;
 int ath5k_hw_set_antenna_mode (struct ath5k_hw*,int ) ;
 int ath5k_hw_set_tx_retry_limits (struct ath5k_hw*,int) ;
 int ath5k_hw_set_txpower_limit (struct ath5k_hw*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
ath5k_config(struct ieee80211_hw *hw, u32 changed)
{
 struct ath5k_hw *ah = hw->priv;
 struct ieee80211_conf *conf = &hw->conf;
 int ret = 0;
 int i;

 mutex_lock(&ah->lock);

 if (changed & IEEE80211_CONF_CHANGE_CHANNEL) {
  ret = ath5k_chan_set(ah, conf->chandef.chan);
  if (ret < 0)
   goto unlock;
 }

 if ((changed & IEEE80211_CONF_CHANGE_POWER) &&
 (ah->ah_txpower.txp_requested != conf->power_level)) {
  ah->ah_txpower.txp_requested = conf->power_level;


  ath5k_hw_set_txpower_limit(ah, (conf->power_level * 2));
 }

 if (changed & IEEE80211_CONF_CHANGE_RETRY_LIMITS) {
  ah->ah_retry_long = conf->long_frame_max_tx_count;
  ah->ah_retry_short = conf->short_frame_max_tx_count;

  for (i = 0; i < ah->ah_capabilities.cap_queues.q_tx_num; i++)
   ath5k_hw_set_tx_retry_limits(ah, i);
 }
 ath5k_hw_set_antenna_mode(ah, ah->ah_ant_mode);

unlock:
 mutex_unlock(&ah->lock);
 return ret;
}
