
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rxon_context {int is_active; int always_active; } ;
struct iwl_priv {int last_bt_traffic_load; int bt_traffic_load; struct ieee80211_vif* scan_vif; int mutex; } ;
struct ieee80211_vif {scalar_t__ type; } ;


 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int iwl_force_scan_end (struct iwl_priv*) ;
 struct iwl_rxon_context* iwl_rxon_ctx_from_vif (struct ieee80211_vif*) ;
 int iwl_scan_cancel_timeout (struct iwl_priv*,int) ;
 int iwl_set_mode (struct iwl_priv*,struct iwl_rxon_context*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void iwl_teardown_interface(struct iwl_priv *priv,
       struct ieee80211_vif *vif,
       bool mode_change)
{
 struct iwl_rxon_context *ctx = iwl_rxon_ctx_from_vif(vif);

 lockdep_assert_held(&priv->mutex);

 if (priv->scan_vif == vif) {
  iwl_scan_cancel_timeout(priv, 200);
  iwl_force_scan_end(priv);
 }

 if (!mode_change) {
  iwl_set_mode(priv, ctx);
  if (!ctx->always_active)
   ctx->is_active = 0;
 }
 if (vif->type == NL80211_IFTYPE_ADHOC)
  priv->bt_traffic_load = priv->last_bt_traffic_load;
}
