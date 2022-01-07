
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spu_context {int dummy; } ;
struct inode {int i_mutex; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int d_inode; TYPE_2__* d_parent; } ;
struct TYPE_6__ {struct spu_context* i_ctx; } ;
struct TYPE_5__ {struct inode* d_inode; } ;


 int I_MUTEX_PARENT ;
 TYPE_3__* SPUFS_I (int ) ;
 int WARN_ON (int) ;
 int dcache_dir_close (struct inode*,struct file*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int spu_forget (struct spu_context*) ;
 int spufs_rmdir (struct inode*,struct dentry*) ;

__attribute__((used)) static int spufs_dir_close(struct inode *inode, struct file *file)
{
 struct spu_context *ctx;
 struct inode *parent;
 struct dentry *dir;
 int ret;

 dir = file->f_path.dentry;
 parent = dir->d_parent->d_inode;
 ctx = SPUFS_I(dir->d_inode)->i_ctx;

 mutex_lock_nested(&parent->i_mutex, I_MUTEX_PARENT);
 ret = spufs_rmdir(parent, dir);
 mutex_unlock(&parent->i_mutex);
 WARN_ON(ret);


 spu_forget(ctx);

 return dcache_dir_close(inode, file);
}
