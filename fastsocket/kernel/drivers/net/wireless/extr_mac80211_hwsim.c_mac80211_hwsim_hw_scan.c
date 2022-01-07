
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac80211_hwsim_data {int hw_scan; int hw; int mutex; scalar_t__ scan_chan_idx; struct ieee80211_vif* hw_scan_vif; struct cfg80211_scan_request* hw_scan_request; scalar_t__ tmp_chan; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int wiphy; struct mac80211_hwsim_data* priv; } ;
struct cfg80211_scan_request {int dummy; } ;


 int EBUSY ;
 scalar_t__ WARN_ON (int) ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wiphy_debug (int ,char*) ;

__attribute__((used)) static int mac80211_hwsim_hw_scan(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif,
      struct cfg80211_scan_request *req)
{
 struct mac80211_hwsim_data *hwsim = hw->priv;

 mutex_lock(&hwsim->mutex);
 if (WARN_ON(hwsim->tmp_chan || hwsim->hw_scan_request)) {
  mutex_unlock(&hwsim->mutex);
  return -EBUSY;
 }
 hwsim->hw_scan_request = req;
 hwsim->hw_scan_vif = vif;
 hwsim->scan_chan_idx = 0;
 mutex_unlock(&hwsim->mutex);

 wiphy_debug(hw->wiphy, "hwsim hw_scan request\n");

 ieee80211_queue_delayed_work(hwsim->hw, &hwsim->hw_scan, 0);

 return 0;
}
