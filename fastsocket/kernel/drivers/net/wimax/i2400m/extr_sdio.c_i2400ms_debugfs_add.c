
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct dentry* debugfs_dentry; } ;
struct TYPE_4__ {TYPE_1__ wimax_dev; } ;
struct i2400ms {struct dentry* debugfs_dentry; TYPE_2__ i2400m; } ;
struct dentry {int dummy; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int __debugfs_register (char*,int ,struct dentry*) ;
 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int debugfs_remove_recursive (struct dentry*) ;
 int fw ;
 int main ;
 int rx ;
 int tx ;

__attribute__((used)) static
int i2400ms_debugfs_add(struct i2400ms *i2400ms)
{
 int result;
 struct dentry *dentry = i2400ms->i2400m.wimax_dev.debugfs_dentry;

 dentry = debugfs_create_dir("i2400m-usb", dentry);
 result = PTR_ERR(dentry);
 if (IS_ERR(dentry)) {
  if (result == -ENODEV)
   result = 0;
  goto error;
 }
 i2400ms->debugfs_dentry = dentry;
 __debugfs_register("dl_", main, dentry);
 __debugfs_register("dl_", tx, dentry);
 __debugfs_register("dl_", rx, dentry);
 __debugfs_register("dl_", fw, dentry);

 return 0;

error:
 debugfs_remove_recursive(i2400ms->debugfs_dentry);
 return result;
}
