
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct file {int * f_op; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct file*) ;
 int O_RDONLY ;
 int PTR_ERR (struct file*) ;
 int current_cred () ;
 struct file* dentry_open (struct dentry*,struct vfsmount*,int ,int ) ;
 int dput (struct dentry*) ;
 int fd_install (int,struct file*) ;
 int get_unused_fd () ;
 int mntput (struct vfsmount*) ;
 int put_unused_fd (int) ;
 int spufs_context_fops ;

__attribute__((used)) static int spufs_context_open(struct dentry *dentry, struct vfsmount *mnt)
{
 int ret;
 struct file *filp;

 ret = get_unused_fd();
 if (ret < 0) {
  dput(dentry);
  mntput(mnt);
  goto out;
 }

 filp = dentry_open(dentry, mnt, O_RDONLY, current_cred());
 if (IS_ERR(filp)) {
  put_unused_fd(ret);
  ret = PTR_ERR(filp);
  goto out;
 }

 filp->f_op = &spufs_context_fops;
 fd_install(ret, filp);
out:
 return ret;
}
