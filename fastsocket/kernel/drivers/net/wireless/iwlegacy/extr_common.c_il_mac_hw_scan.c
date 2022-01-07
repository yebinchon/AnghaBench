
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_priv {int mutex; int scan_band; struct ieee80211_vif* scan_vif; struct cfg80211_scan_request* scan_request; int status; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct il_priv* priv; } ;
struct cfg80211_scan_request {scalar_t__ n_channels; TYPE_1__** channels; } ;
struct TYPE_2__ {int band; } ;


 int D_MAC80211 (char*,...) ;
 int D_SCAN (char*) ;
 int EAGAIN ;
 int EINVAL ;
 int IL_ERR (char*) ;
 int S_SCANNING ;
 int il_scan_initiate (struct il_priv*,struct ieee80211_vif*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int
il_mac_hw_scan(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
        struct cfg80211_scan_request *req)
{
 struct il_priv *il = hw->priv;
 int ret;

 if (req->n_channels == 0) {
  IL_ERR("Can not scan on no channels.\n");
  return -EINVAL;
 }

 mutex_lock(&il->mutex);
 D_MAC80211("enter\n");

 if (test_bit(S_SCANNING, &il->status)) {
  D_SCAN("Scan already in progress.\n");
  ret = -EAGAIN;
  goto out_unlock;
 }


 il->scan_request = req;
 il->scan_vif = vif;
 il->scan_band = req->channels[0]->band;

 ret = il_scan_initiate(il, vif);

out_unlock:
 D_MAC80211("leave ret %d\n", ret);
 mutex_unlock(&il->mutex);

 return ret;
}
