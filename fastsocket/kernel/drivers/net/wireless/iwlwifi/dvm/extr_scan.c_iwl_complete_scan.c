
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {scalar_t__ scan_type; int * scan_request; int * scan_vif; int hw; } ;


 int IWL_DEBUG_SCAN (struct iwl_priv*,char*) ;
 scalar_t__ IWL_SCAN_NORMAL ;
 scalar_t__ IWL_SCAN_ROC ;
 int ieee80211_scan_completed (int ,int) ;
 int iwl_scan_roc_expired (struct iwl_priv*) ;

__attribute__((used)) static void iwl_complete_scan(struct iwl_priv *priv, bool aborted)
{

 if (priv->scan_request) {
  IWL_DEBUG_SCAN(priv, "Complete scan in mac80211\n");
  ieee80211_scan_completed(priv->hw, aborted);
 }

 if (priv->scan_type == IWL_SCAN_ROC)
  iwl_scan_roc_expired(priv);

 priv->scan_type = IWL_SCAN_NORMAL;
 priv->scan_vif = ((void*)0);
 priv->scan_request = ((void*)0);
}
