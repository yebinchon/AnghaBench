
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_vif_priv {int ibss_bssid_sta_id; int ctx; } ;
struct iwl_priv {int dummy; } ;
struct TYPE_2__ {int bssid; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; scalar_t__ drv_priv; } ;


 int iwl_remove_station (struct iwl_priv*,int ,int ) ;
 int iwlagn_add_bssid_station (struct iwl_priv*,int ,int ,int *) ;

int iwlagn_manage_ibss_station(struct iwl_priv *priv,
          struct ieee80211_vif *vif, bool add)
{
 struct iwl_vif_priv *vif_priv = (void *)vif->drv_priv;

 if (add)
  return iwlagn_add_bssid_station(priv, vif_priv->ctx,
      vif->bss_conf.bssid,
      &vif_priv->ibss_bssid_sta_id);
 return iwl_remove_station(priv, vif_priv->ibss_bssid_sta_id,
      vif->bss_conf.bssid);
}
