
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* dentry; } ;
struct nameidata {TYPE_4__ path; } ;
struct dentry {int dummy; } ;
typedef int mode_t ;
struct TYPE_8__ {int i_mutex; } ;
struct TYPE_7__ {int mnt_root; } ;
struct TYPE_6__ {TYPE_3__* d_inode; } ;


 int IS_ERR (struct dentry*) ;
 int LOOKUP_PARENT ;
 int PTR_ERR (struct dentry*) ;
 TYPE_2__* dev_mnt ;
 int dput (struct dentry*) ;
 struct dentry* lookup_create (struct nameidata*,int) ;
 int mutex_unlock (int *) ;
 int path_put (TYPE_4__*) ;
 int vfs_mkdir (TYPE_3__*,struct dentry*,int ) ;
 int vfs_path_lookup (int ,TYPE_2__*,char const*,int ,struct nameidata*) ;

__attribute__((used)) static int dev_mkdir(const char *name, mode_t mode)
{
 struct nameidata nd;
 struct dentry *dentry;
 int err;

 err = vfs_path_lookup(dev_mnt->mnt_root, dev_mnt,
         name, LOOKUP_PARENT, &nd);
 if (err)
  return err;

 dentry = lookup_create(&nd, 1);
 if (!IS_ERR(dentry)) {
  err = vfs_mkdir(nd.path.dentry->d_inode, dentry, mode);
  dput(dentry);
 } else {
  err = PTR_ERR(dentry);
 }
 mutex_unlock(&nd.path.dentry->d_inode->i_mutex);

 path_put(&nd.path);
 return err;
}
