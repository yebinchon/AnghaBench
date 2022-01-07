
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct inode {int i_mutex; } ;
struct dentry {int dummy; } ;


 int S_IRWXUGO ;
 int WARN_ON (int) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int mntget (struct vfsmount*) ;
 int mutex_unlock (int *) ;
 int simple_rmdir (struct inode*,struct dentry*) ;
 int spufs_gang_open (int ,int ) ;
 int spufs_mkgang (struct inode*,struct dentry*,int) ;

__attribute__((used)) static int spufs_create_gang(struct inode *inode,
   struct dentry *dentry,
   struct vfsmount *mnt, int mode)
{
 int ret;

 ret = spufs_mkgang(inode, dentry, mode & S_IRWXUGO);
 if (ret)
  goto out;





 ret = spufs_gang_open(dget(dentry), mntget(mnt));
 if (ret < 0) {
  int err = simple_rmdir(inode, dentry);
  WARN_ON(err);
 }

out:
 mutex_unlock(&inode->i_mutex);
 dput(dentry);
 return ret;
}
