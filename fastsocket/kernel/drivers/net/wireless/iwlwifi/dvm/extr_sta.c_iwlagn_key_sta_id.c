
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iwl_vif_priv {TYPE_1__* ctx; } ;
struct iwl_priv {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ drv_priv; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_2__ {int ap_sta_id; } ;


 int IWL_INVALID_STATION ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int iwl_sta_id (struct ieee80211_sta*) ;

__attribute__((used)) static u8 iwlagn_key_sta_id(struct iwl_priv *priv,
       struct ieee80211_vif *vif,
       struct ieee80211_sta *sta)
{
 struct iwl_vif_priv *vif_priv = (void *)vif->drv_priv;

 if (sta)
  return iwl_sta_id(sta);






 if (vif->type == NL80211_IFTYPE_STATION && vif_priv->ctx)
  return vif_priv->ctx->ap_sta_id;

 return IWL_INVALID_STATION;
}
