
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_5__* dentry; } ;
struct TYPE_7__ {int len; int name; } ;
struct nameidata {TYPE_4__ path; TYPE_1__ last; } ;
struct dentry {scalar_t__ d_inode; } ;
struct TYPE_11__ {TYPE_2__* d_inode; } ;
struct TYPE_9__ {int mnt_root; } ;
struct TYPE_8__ {int i_mutex; } ;


 int ENOENT ;
 int IS_ERR (struct dentry*) ;
 int I_MUTEX_PARENT ;
 int LOOKUP_PARENT ;
 int PTR_ERR (struct dentry*) ;
 TYPE_3__* dev_mnt ;
 int dput (struct dentry*) ;
 struct dentry* lookup_one_len (int ,TYPE_5__*,int ) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int path_put (TYPE_4__*) ;
 int vfs_path_lookup (int ,TYPE_3__*,char const*,int ,struct nameidata*) ;
 int vfs_rmdir (TYPE_2__*,struct dentry*) ;

__attribute__((used)) static int dev_rmdir(const char *name)
{
 struct nameidata nd;
 struct dentry *dentry;
 int err;

 err = vfs_path_lookup(dev_mnt->mnt_root, dev_mnt,
         name, LOOKUP_PARENT, &nd);
 if (err)
  return err;

 mutex_lock_nested(&nd.path.dentry->d_inode->i_mutex, I_MUTEX_PARENT);
 dentry = lookup_one_len(nd.last.name, nd.path.dentry, nd.last.len);
 if (!IS_ERR(dentry)) {
  if (dentry->d_inode)
   err = vfs_rmdir(nd.path.dentry->d_inode, dentry);
  else
   err = -ENOENT;
  dput(dentry);
 } else {
  err = PTR_ERR(dentry);
 }
 mutex_unlock(&nd.path.dentry->d_inode->i_mutex);

 path_put(&nd.path);
 return err;
}
