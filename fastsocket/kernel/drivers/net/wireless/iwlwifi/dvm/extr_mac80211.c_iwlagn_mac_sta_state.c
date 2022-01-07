
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_vif_priv {int ctx; } ;
struct iwl_priv {int mutex; int sta_lock; TYPE_1__* stations; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ drv_priv; } ;
struct ieee80211_sta {int addr; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum ieee80211_sta_state { ____Placeholder_ieee80211_sta_state } ieee80211_sta_state ;
struct TYPE_2__ {int used; } ;


 int IEEE80211_STA_ASSOC ;
 int IEEE80211_STA_AUTH ;
 int IEEE80211_STA_NONE ;
 int IEEE80211_STA_NOTEXIST ;
 int IWL_DEBUG_INFO (struct iwl_priv*,char*,int ) ;
 int IWL_DEBUG_MAC80211 (struct iwl_priv*,char*,...) ;
 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 int IWL_STA_UCODE_INPROGRESS ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ iwl_is_rfkill (struct iwl_priv*) ;
 int iwl_rs_rate_init (struct iwl_priv*,struct ieee80211_sta*,size_t) ;
 size_t iwl_sta_id (struct ieee80211_sta*) ;
 int iwl_sta_update_ht (struct iwl_priv*,int ,struct ieee80211_sta*) ;
 int iwlagn_mac_sta_add (struct ieee80211_hw*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int iwlagn_mac_sta_remove (struct ieee80211_hw*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int iwlagn_mac_sta_state(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif,
    struct ieee80211_sta *sta,
    enum ieee80211_sta_state old_state,
    enum ieee80211_sta_state new_state)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);
 struct iwl_vif_priv *vif_priv = (void *)vif->drv_priv;
 enum {
  NONE, ADD, REMOVE, HT_RATE_INIT, ADD_RATE_INIT,
 } op = NONE;
 int ret;

 IWL_DEBUG_MAC80211(priv, "station %pM state change %d->%d\n",
      sta->addr, old_state, new_state);

 mutex_lock(&priv->mutex);
 if (vif->type == NL80211_IFTYPE_STATION) {
  if (old_state == IEEE80211_STA_NOTEXIST &&
      new_state == IEEE80211_STA_NONE)
   op = ADD;
  else if (old_state == IEEE80211_STA_NONE &&
    new_state == IEEE80211_STA_NOTEXIST)
   op = REMOVE;
  else if (old_state == IEEE80211_STA_AUTH &&
    new_state == IEEE80211_STA_ASSOC)
   op = HT_RATE_INIT;
 } else {
  if (old_state == IEEE80211_STA_AUTH &&
      new_state == IEEE80211_STA_ASSOC)
   op = ADD_RATE_INIT;
  else if (old_state == IEEE80211_STA_ASSOC &&
    new_state == IEEE80211_STA_AUTH)
   op = REMOVE;
 }

 switch (op) {
 case ADD:
  ret = iwlagn_mac_sta_add(hw, vif, sta);
  if (ret)
   break;






  spin_lock_bh(&priv->sta_lock);
  priv->stations[iwl_sta_id(sta)].used &=
   ~IWL_STA_UCODE_INPROGRESS;
  spin_unlock_bh(&priv->sta_lock);
  break;
 case REMOVE:
  ret = iwlagn_mac_sta_remove(hw, vif, sta);
  break;
 case ADD_RATE_INIT:
  ret = iwlagn_mac_sta_add(hw, vif, sta);
  if (ret)
   break;

  IWL_DEBUG_INFO(priv,
          "Initializing rate scaling for station %pM\n",
          sta->addr);
  iwl_rs_rate_init(priv, sta, iwl_sta_id(sta));
  ret = 0;
  break;
 case HT_RATE_INIT:

  ret = iwl_sta_update_ht(priv, vif_priv->ctx, sta);
  if (ret)
   break;
  IWL_DEBUG_INFO(priv,
          "Initializing rate scaling for station %pM\n",
          sta->addr);
  iwl_rs_rate_init(priv, sta, iwl_sta_id(sta));
  ret = 0;
  break;
 default:
  ret = 0;
  break;
 }





 if (iwl_is_rfkill(priv))
  ret = 0;

 mutex_unlock(&priv->mutex);
 IWL_DEBUG_MAC80211(priv, "leave\n");

 return ret;
}
