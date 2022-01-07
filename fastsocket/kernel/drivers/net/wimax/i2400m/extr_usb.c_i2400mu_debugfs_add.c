
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct dentry* debugfs_dentry; } ;
struct TYPE_6__ {TYPE_2__ wimax_dev; } ;
struct i2400mu {struct dentry* debugfs_dentry; int rx_size; int rx_size_auto_shrink; TYPE_3__ i2400m; TYPE_1__* usb_iface; } ;
struct device {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int __debugfs_register (char*,int ,struct dentry*) ;
 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 struct dentry* debugfs_create_size_t (char*,int,struct dentry*,int *) ;
 struct dentry* debugfs_create_u8 (char*,int,struct dentry*,int *) ;
 int debugfs_remove_recursive (struct dentry*) ;
 int dev_err (struct device*,char*,int) ;
 int fw ;
 int notif ;
 int rx ;
 int tx ;
 int usb ;

__attribute__((used)) static
int i2400mu_debugfs_add(struct i2400mu *i2400mu)
{
 int result;
 struct device *dev = &i2400mu->usb_iface->dev;
 struct dentry *dentry = i2400mu->i2400m.wimax_dev.debugfs_dentry;
 struct dentry *fd;

 dentry = debugfs_create_dir("i2400m-usb", dentry);
 result = PTR_ERR(dentry);
 if (IS_ERR(dentry)) {
  if (result == -ENODEV)
   result = 0;
  goto error;
 }
 i2400mu->debugfs_dentry = dentry;
 __debugfs_register("dl_", usb, dentry);
 __debugfs_register("dl_", fw, dentry);
 __debugfs_register("dl_", notif, dentry);
 __debugfs_register("dl_", rx, dentry);
 __debugfs_register("dl_", tx, dentry);


 fd = debugfs_create_u8("rx_size_auto_shrink", 0600, dentry,
          &i2400mu->rx_size_auto_shrink);
 result = PTR_ERR(fd);
 if (IS_ERR(fd) && result != -ENODEV) {
  dev_err(dev, "Can't create debugfs entry "
   "rx_size_auto_shrink: %d\n", result);
  goto error;
 }

 fd = debugfs_create_size_t("rx_size", 0600, dentry,
       &i2400mu->rx_size);
 result = PTR_ERR(fd);
 if (IS_ERR(fd) && result != -ENODEV) {
  dev_err(dev, "Can't create debugfs entry "
   "rx_size: %d\n", result);
  goto error;
 }

 return 0;

error:
 debugfs_remove_recursive(i2400mu->debugfs_dentry);
 return result;
}
