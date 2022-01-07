
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_pub {int dbgfs_dir; } ;


 int IS_ERR_OR_NULL (int ) ;
 int debugfs_remove_recursive (int ) ;

void brcms_debugfs_detach(struct brcms_pub *drvr)
{
 if (!IS_ERR_OR_NULL(drvr->dbgfs_dir))
  debugfs_remove_recursive(drvr->dbgfs_dir);
}
