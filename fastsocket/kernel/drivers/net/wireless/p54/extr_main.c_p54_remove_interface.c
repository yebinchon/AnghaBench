
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54_common {int conf_mutex; int bssid; int mac_addr; int mode; int beacon_comp; int beacon_req_id; int * vif; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct p54_common* priv; } ;


 int ETH_ALEN ;
 int HZ ;
 int NL80211_IFTYPE_MONITOR ;
 scalar_t__ le32_to_cpu (int ) ;
 int memset (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int p54_setup_mac (struct p54_common*) ;
 int p54_tx_cancel (struct p54_common*,int ) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static void p54_remove_interface(struct ieee80211_hw *dev,
     struct ieee80211_vif *vif)
{
 struct p54_common *priv = dev->priv;

 mutex_lock(&priv->conf_mutex);
 priv->vif = ((void*)0);





 if (le32_to_cpu(priv->beacon_req_id) != 0) {
  p54_tx_cancel(priv, priv->beacon_req_id);
  wait_for_completion_interruptible_timeout(&priv->beacon_comp, HZ);
 }
 priv->mode = NL80211_IFTYPE_MONITOR;
 memset(priv->mac_addr, 0, ETH_ALEN);
 memset(priv->bssid, 0, ETH_ALEN);
 p54_setup_mac(priv);
 mutex_unlock(&priv->conf_mutex);
}
