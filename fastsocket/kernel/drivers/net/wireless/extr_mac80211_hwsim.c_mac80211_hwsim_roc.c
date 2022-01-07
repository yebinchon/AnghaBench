
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac80211_hwsim_data {int roc_done; int mutex; struct ieee80211_channel* tmp_chan; scalar_t__ hw_scan_request; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int wiphy; struct mac80211_hwsim_data* priv; } ;
struct ieee80211_channel {int center_freq; } ;
typedef enum ieee80211_roc_type { ____Placeholder_ieee80211_roc_type } ieee80211_roc_type ;


 int EBUSY ;
 scalar_t__ WARN_ON (int) ;
 int ieee80211_queue_delayed_work (struct ieee80211_hw*,int *,int ) ;
 int ieee80211_ready_on_channel (struct ieee80211_hw*) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wiphy_debug (int ,char*,int ,int) ;

__attribute__((used)) static int mac80211_hwsim_roc(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         struct ieee80211_channel *chan,
         int duration,
         enum ieee80211_roc_type type)
{
 struct mac80211_hwsim_data *hwsim = hw->priv;

 mutex_lock(&hwsim->mutex);
 if (WARN_ON(hwsim->tmp_chan || hwsim->hw_scan_request)) {
  mutex_unlock(&hwsim->mutex);
  return -EBUSY;
 }

 hwsim->tmp_chan = chan;
 mutex_unlock(&hwsim->mutex);

 wiphy_debug(hw->wiphy, "hwsim ROC (%d MHz, %d ms)\n",
      chan->center_freq, duration);

 ieee80211_ready_on_channel(hw);

 ieee80211_queue_delayed_work(hw, &hwsim->roc_done,
         msecs_to_jiffies(duration));
 return 0;
}
