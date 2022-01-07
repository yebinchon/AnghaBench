
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_vif {int * dbgfs_dir; int * dbgfs_slink; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;


 int debugfs_remove (int *) ;
 int debugfs_remove_recursive (int *) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

void iwl_mvm_vif_dbgfs_clean(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 debugfs_remove(mvmvif->dbgfs_slink);
 mvmvif->dbgfs_slink = ((void*)0);

 debugfs_remove_recursive(mvmvif->dbgfs_dir);
 mvmvif->dbgfs_dir = ((void*)0);
}
