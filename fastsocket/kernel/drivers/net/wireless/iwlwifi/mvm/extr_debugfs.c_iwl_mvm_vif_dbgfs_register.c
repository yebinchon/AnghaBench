
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct iwl_mvm_vif {int dbgfs_slink; TYPE_7__* dbgfs_dir; struct iwl_mvm* dbgfs_data; } ;
struct iwl_mvm {int debugfs_dir; } ;
struct ieee80211_vif {struct dentry* debugfs_dir; } ;
struct TYPE_14__ {char* name; } ;
struct dentry {TYPE_6__ d_name; TYPE_4__* d_parent; } ;
struct TYPE_13__ {char* name; } ;
struct TYPE_15__ {TYPE_5__ d_name; } ;
struct TYPE_11__ {char* name; } ;
struct TYPE_12__ {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_9__ {char* name; } ;
struct TYPE_10__ {TYPE_1__ d_name; } ;


 int IWL_ERR (struct iwl_mvm*,char*,...) ;
 int MVM_DEBUGFS_ADD_FILE_VIF (int ,TYPE_7__*,int ) ;
 int S_IRUSR ;
 TYPE_7__* debugfs_create_dir (char*,struct dentry*) ;
 int debugfs_create_symlink (char*,int ,char*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int mac_params ;
 int snprintf (char*,int,char*,char*,char*,char*,char*) ;

void iwl_mvm_vif_dbgfs_register(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct dentry *dbgfs_dir = vif->debugfs_dir;
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 char buf[100];

 if (!dbgfs_dir)
  return;

 mvmvif->dbgfs_dir = debugfs_create_dir("iwlmvm", dbgfs_dir);
 mvmvif->dbgfs_data = mvm;

 if (!mvmvif->dbgfs_dir) {
  IWL_ERR(mvm, "Failed to create debugfs directory under %s\n",
   dbgfs_dir->d_name.name);
  return;
 }

 MVM_DEBUGFS_ADD_FILE_VIF(mac_params, mvmvif->dbgfs_dir,
     S_IRUSR);
 snprintf(buf, 100, "../../../%s/%s/%s/%s",
   dbgfs_dir->d_parent->d_parent->d_name.name,
   dbgfs_dir->d_parent->d_name.name,
   dbgfs_dir->d_name.name,
   mvmvif->dbgfs_dir->d_name.name);

 mvmvif->dbgfs_slink = debugfs_create_symlink(dbgfs_dir->d_name.name,
           mvm->debugfs_dir, buf);
 if (!mvmvif->dbgfs_slink)
  IWL_ERR(mvm, "Can't create debugfs symbolic link under %s\n",
   dbgfs_dir->d_name.name);
 return;
err:
 IWL_ERR(mvm, "Can't create debugfs entity\n");
}
