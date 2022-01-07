
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct spu_gang {int aff_mutex; } ;
struct spu_context {int dummy; } ;
struct inode {int i_mutex; } ;
struct file {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int i_ctx; struct spu_gang* i_gang; } ;


 int CAP_SYS_NICE ;
 int EINVAL ;
 int ENODEV ;
 int EPERM ;
 scalar_t__ IS_ERR (struct spu_context*) ;
 int PTR_ERR (struct spu_context*) ;
 TYPE_1__* SPUFS_I (struct inode*) ;
 int SPU_CREATE_AFFINITY_MEM ;
 int SPU_CREATE_AFFINITY_SPU ;
 int SPU_CREATE_ISOLATE ;
 int SPU_CREATE_NOSCHED ;
 int S_IRWXUGO ;
 int WARN_ON (int ) ;
 int capable (int ) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int isolated_loader ;
 int mntget (struct vfsmount*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_spu_context (struct spu_context*) ;
 int spu_forget (int ) ;
 struct spu_context* spufs_assert_affinity (int,struct spu_gang*,struct file*) ;
 int spufs_context_open (int ,int ) ;
 int spufs_mkdir (struct inode*,struct dentry*,int,int) ;
 int spufs_rmdir (struct inode*,struct dentry*) ;
 int spufs_set_affinity (int,int ,struct spu_context*) ;

__attribute__((used)) static int
spufs_create_context(struct inode *inode, struct dentry *dentry,
   struct vfsmount *mnt, int flags, int mode,
   struct file *aff_filp)
{
 int ret;
 int affinity;
 struct spu_gang *gang;
 struct spu_context *neighbor;

 ret = -EPERM;
 if ((flags & SPU_CREATE_NOSCHED) &&
     !capable(CAP_SYS_NICE))
  goto out_unlock;

 ret = -EINVAL;
 if ((flags & (SPU_CREATE_NOSCHED | SPU_CREATE_ISOLATE))
     == SPU_CREATE_ISOLATE)
  goto out_unlock;

 ret = -ENODEV;
 if ((flags & SPU_CREATE_ISOLATE) && !isolated_loader)
  goto out_unlock;

 gang = ((void*)0);
 neighbor = ((void*)0);
 affinity = flags & (SPU_CREATE_AFFINITY_MEM | SPU_CREATE_AFFINITY_SPU);
 if (affinity) {
  gang = SPUFS_I(inode)->i_gang;
  ret = -EINVAL;
  if (!gang)
   goto out_unlock;
  mutex_lock(&gang->aff_mutex);
  neighbor = spufs_assert_affinity(flags, gang, aff_filp);
  if (IS_ERR(neighbor)) {
   ret = PTR_ERR(neighbor);
   goto out_aff_unlock;
  }
 }

 ret = spufs_mkdir(inode, dentry, flags, mode & S_IRWXUGO);
 if (ret)
  goto out_aff_unlock;

 if (affinity) {
  spufs_set_affinity(flags, SPUFS_I(dentry->d_inode)->i_ctx,
        neighbor);
  if (neighbor)
   put_spu_context(neighbor);
 }





 ret = spufs_context_open(dget(dentry), mntget(mnt));
 if (ret < 0) {
  WARN_ON(spufs_rmdir(inode, dentry));
  if (affinity)
   mutex_unlock(&gang->aff_mutex);
  mutex_unlock(&inode->i_mutex);
  spu_forget(SPUFS_I(dentry->d_inode)->i_ctx);
  goto out;
 }

out_aff_unlock:
 if (affinity)
  mutex_unlock(&gang->aff_mutex);
out_unlock:
 mutex_unlock(&inode->i_mutex);
out:
 dput(dentry);
 return ret;
}
