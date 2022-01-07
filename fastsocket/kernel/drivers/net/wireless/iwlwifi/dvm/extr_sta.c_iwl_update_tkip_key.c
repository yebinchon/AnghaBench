
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct iwl_priv {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {int dummy; } ;


 int CMD_ASYNC ;
 scalar_t__ IWL_INVALID_STATION ;
 scalar_t__ iwl_scan_cancel (struct iwl_priv*) ;
 scalar_t__ iwlagn_key_sta_id (struct iwl_priv*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int iwlagn_send_sta_key (struct iwl_priv*,struct ieee80211_key_conf*,scalar_t__,int ,int *,int ) ;

void iwl_update_tkip_key(struct iwl_priv *priv,
    struct ieee80211_vif *vif,
    struct ieee80211_key_conf *keyconf,
    struct ieee80211_sta *sta, u32 iv32, u16 *phase1key)
{
 u8 sta_id = iwlagn_key_sta_id(priv, vif, sta);

 if (sta_id == IWL_INVALID_STATION)
  return;

 if (iwl_scan_cancel(priv)) {


  return;
 }

 iwlagn_send_sta_key(priv, keyconf, sta_id,
       iv32, phase1key, CMD_ASYNC);
}
