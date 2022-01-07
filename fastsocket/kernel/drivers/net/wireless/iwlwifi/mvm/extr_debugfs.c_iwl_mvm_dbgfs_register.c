
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct iwl_mvm {TYPE_6__* hw; struct dentry* debugfs_dir; } ;
struct dentry {TYPE_4__* d_parent; } ;
struct TYPE_12__ {TYPE_5__* wiphy; } ;
struct TYPE_11__ {int debugfsdir; } ;
struct TYPE_9__ {char* name; } ;
struct TYPE_10__ {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_7__ {char* name; } ;
struct TYPE_8__ {TYPE_1__ d_name; } ;


 int ENOMEM ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int MVM_DEBUGFS_ADD_FILE (int ,struct dentry*,int) ;
 int S_IRUSR ;
 int S_IWUSR ;
 int bt_notif ;
 int debugfs_create_symlink (char*,int ,char*) ;
 int fw_restart ;
 int power_down_allow ;
 int power_down_d3_allow ;
 int snprintf (char*,int,char*,char*,char*) ;
 int sram ;
 int sta_drain ;
 int stations ;
 int tx_flush ;

int iwl_mvm_dbgfs_register(struct iwl_mvm *mvm, struct dentry *dbgfs_dir)
{
 char buf[100];

 mvm->debugfs_dir = dbgfs_dir;

 MVM_DEBUGFS_ADD_FILE(tx_flush, mvm->debugfs_dir, S_IWUSR);
 MVM_DEBUGFS_ADD_FILE(sta_drain, mvm->debugfs_dir, S_IWUSR);
 MVM_DEBUGFS_ADD_FILE(sram, mvm->debugfs_dir, S_IWUSR | S_IRUSR);
 MVM_DEBUGFS_ADD_FILE(stations, dbgfs_dir, S_IRUSR);
 MVM_DEBUGFS_ADD_FILE(bt_notif, dbgfs_dir, S_IRUSR);
 MVM_DEBUGFS_ADD_FILE(power_down_allow, mvm->debugfs_dir, S_IWUSR);
 MVM_DEBUGFS_ADD_FILE(power_down_d3_allow, mvm->debugfs_dir, S_IWUSR);
 MVM_DEBUGFS_ADD_FILE(fw_restart, mvm->debugfs_dir, S_IWUSR);





 snprintf(buf, 100, "../../%s/%s",
   dbgfs_dir->d_parent->d_parent->d_name.name,
   dbgfs_dir->d_parent->d_name.name);
 if (!debugfs_create_symlink("iwlwifi", mvm->hw->wiphy->debugfsdir, buf))
  goto err;

 return 0;
err:
 IWL_ERR(mvm, "Can't create the mvm debugfs directory\n");
 return -ENOMEM;
}
