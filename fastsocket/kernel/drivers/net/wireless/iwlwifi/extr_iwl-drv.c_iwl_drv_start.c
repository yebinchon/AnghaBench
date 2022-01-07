
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {void* dbgfs_drv; void* dbgfs_dir; struct iwl_trans* trans; int dev; int list; int request_firmware_complete; struct iwl_cfg const* cfg; } ;
struct iwl_drv {void* dbgfs_drv; void* dbgfs_dir; struct iwl_drv* trans; int dev; int list; int request_firmware_complete; struct iwl_cfg const* cfg; } ;
struct iwl_cfg {int dummy; } ;


 int ENOMEM ;
 struct iwl_trans* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IWL_ERR (struct iwl_trans*,char*) ;
 void* debugfs_create_dir (char*,void*) ;
 int debugfs_remove_recursive (void*) ;
 char* dev_name (int ) ;
 int init_completion (int *) ;
 void* iwl_dbgfs_root ;
 int iwl_request_firmware (struct iwl_trans*,int) ;
 int kfree (struct iwl_trans*) ;
 struct iwl_trans* kzalloc (int,int ) ;

struct iwl_drv *iwl_drv_start(struct iwl_trans *trans,
         const struct iwl_cfg *cfg)
{
 struct iwl_drv *drv;
 int ret;

 drv = kzalloc(sizeof(*drv), GFP_KERNEL);
 if (!drv)
  return ((void*)0);

 drv->trans = trans;
 drv->dev = trans->dev;
 drv->cfg = cfg;

 init_completion(&drv->request_firmware_complete);
 INIT_LIST_HEAD(&drv->list);
 ret = iwl_request_firmware(drv, 1);
 if (ret) {
  IWL_ERR(trans, "Couldn't request the fw\n");
  goto err_fw;
 }

 return drv;

err_fw:





 kfree(drv);

 return ERR_PTR(ret);
}
