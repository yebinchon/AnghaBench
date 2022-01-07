
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* dentry; } ;
struct nameidata {TYPE_5__ path; } ;
struct device {int devt; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct cred {int dummy; } ;
typedef int mode_t ;
struct TYPE_10__ {int i_mutex; } ;
struct TYPE_9__ {int mnt_root; } ;
struct TYPE_8__ {TYPE_4__* d_inode; } ;
struct TYPE_7__ {TYPE_3__** i_private; } ;


 int ENOENT ;
 int ENOMEM ;
 int IS_ERR (struct dentry*) ;
 int LOOKUP_PARENT ;
 int PTR_ERR (struct dentry*) ;
 int S_IFBLK ;
 int S_IFCHR ;
 int create_path (char const*) ;
 TYPE_3__* dev_mnt ;
 char* device_get_devnode (struct device*,int*,char const**) ;
 int dput (struct dentry*) ;
 int init_cred ;
 scalar_t__ is_blockdev (struct device*) ;
 int kfree (char const*) ;
 struct dentry* lookup_create (struct nameidata*,int ) ;
 int mutex_unlock (int *) ;
 struct cred* override_creds (int *) ;
 int path_put (TYPE_5__*) ;
 int revert_creds (struct cred const*) ;
 int sys_umask (int) ;
 int vfs_mknod (TYPE_4__*,struct dentry*,int,int ) ;
 int vfs_path_lookup (int ,TYPE_3__*,char const*,int ,struct nameidata*) ;

int devtmpfs_create_node(struct device *dev)
{
 const char *tmp = ((void*)0);
 const char *nodename;
 const struct cred *curr_cred;
 mode_t mode = 0;
 struct nameidata nd;
 struct dentry *dentry;
 int err;

 if (!dev_mnt)
  return 0;

 nodename = device_get_devnode(dev, &mode, &tmp);
 if (!nodename)
  return -ENOMEM;

 if (mode == 0)
  mode = 0600;
 if (is_blockdev(dev))
  mode |= S_IFBLK;
 else
  mode |= S_IFCHR;

 curr_cred = override_creds(&init_cred);
 err = vfs_path_lookup(dev_mnt->mnt_root, dev_mnt,
         nodename, LOOKUP_PARENT, &nd);
 if (err == -ENOENT) {

  create_path(nodename);
  err = vfs_path_lookup(dev_mnt->mnt_root, dev_mnt,
          nodename, LOOKUP_PARENT, &nd);
  if (err)
   goto out;
 }

 dentry = lookup_create(&nd, 0);
 if (!IS_ERR(dentry)) {
  int umask;

  umask = sys_umask(0000);
  err = vfs_mknod(nd.path.dentry->d_inode,
    dentry, mode, dev->devt);
  sys_umask(umask);

  if (!err)
   dentry->d_inode->i_private = &dev_mnt;
  dput(dentry);
 } else {
  err = PTR_ERR(dentry);
 }
 mutex_unlock(&nd.path.dentry->d_inode->i_mutex);

 path_put(&nd.path);
out:
 kfree(tmp);
 revert_creds(curr_cred);
 return err;
}
