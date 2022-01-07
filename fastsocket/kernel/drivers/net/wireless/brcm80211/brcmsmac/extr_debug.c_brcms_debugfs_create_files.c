
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct brcms_pub {struct dentry* dbgfs_dir; } ;


 int IS_ERR_OR_NULL (struct dentry*) ;
 int S_IRUGO ;
 int brcms_debugfs_hardware_ops ;
 int debugfs_create_file (char*,int ,struct dentry*,struct brcms_pub*,int *) ;

void brcms_debugfs_create_files(struct brcms_pub *drvr)
{
 struct dentry *dentry = drvr->dbgfs_dir;

 if (!IS_ERR_OR_NULL(dentry))
  debugfs_create_file("hardware", S_IRUGO, dentry,
        drvr, &brcms_debugfs_hardware_ops);
}
