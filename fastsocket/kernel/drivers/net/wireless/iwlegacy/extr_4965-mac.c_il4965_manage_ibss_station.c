
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_vif_priv {int ibss_bssid_sta_id; } ;
struct il_priv {int dummy; } ;
struct TYPE_2__ {int bssid; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; scalar_t__ drv_priv; } ;


 int il4965_add_bssid_station (struct il_priv*,int ,int *) ;
 int il_remove_station (struct il_priv*,int ,int ) ;

int
il4965_manage_ibss_station(struct il_priv *il, struct ieee80211_vif *vif,
      bool add)
{
 struct il_vif_priv *vif_priv = (void *)vif->drv_priv;

 if (add)
  return il4965_add_bssid_station(il, vif->bss_conf.bssid,
      &vif_priv->ibss_bssid_sta_id);
 return il_remove_station(il, vif_priv->ibss_bssid_sta_id,
     vif->bss_conf.bssid);
}
