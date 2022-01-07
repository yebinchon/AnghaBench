
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int class_dev; struct dentry* debugfs_root; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int S_IRUSR ;
 struct dentry* debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (char*,int ,struct dentry*,struct mmc_host*,int *) ;
 int debugfs_remove_recursive (struct dentry*) ;
 int dev_err (int *,char*) ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_ios_fops ;

void mmc_add_host_debugfs(struct mmc_host *host)
{
 struct dentry *root;

 root = debugfs_create_dir(mmc_hostname(host), ((void*)0));
 if (IS_ERR(root))

  return;
 if (!root)


  goto err_root;

 host->debugfs_root = root;

 if (!debugfs_create_file("ios", S_IRUSR, root, host, &mmc_ios_fops))
  goto err_ios;

 return;

err_ios:
 debugfs_remove_recursive(root);
 host->debugfs_root = ((void*)0);
err_root:
 dev_err(&host->class_dev, "failed to initialize debugfs\n");
}
