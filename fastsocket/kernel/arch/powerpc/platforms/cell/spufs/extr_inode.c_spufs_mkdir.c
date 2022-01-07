
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spu_context {unsigned int flags; } ;
struct inode {int i_mode; int i_sb; int * i_fop; int * i_op; int i_gid; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_4__ {struct spu_context* i_ctx; int i_gang; } ;
struct TYPE_3__ {scalar_t__ debug; } ;


 int ENOSPC ;
 TYPE_2__* SPUFS_I (struct inode*) ;
 unsigned int SPU_CREATE_NOSCHED ;
 int S_IFDIR ;
 int S_ISGID ;
 struct spu_context* alloc_spu_context (int ) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dget (struct dentry*) ;
 int inc_nlink (struct inode*) ;
 int iput (struct inode*) ;
 int put_spu_context (struct spu_context*) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;
 int spu_forget (struct spu_context*) ;
 int spufs_dir_contents ;
 int spufs_dir_debug_contents ;
 int spufs_dir_nosched_contents ;
 int spufs_fill_dir (struct dentry*,int ,int,struct spu_context*) ;
 TYPE_1__* spufs_get_sb_info (int ) ;
 struct inode* spufs_new_inode (int ,int) ;

__attribute__((used)) static int
spufs_mkdir(struct inode *dir, struct dentry *dentry, unsigned int flags,
  int mode)
{
 int ret;
 struct inode *inode;
 struct spu_context *ctx;

 ret = -ENOSPC;
 inode = spufs_new_inode(dir->i_sb, mode | S_IFDIR);
 if (!inode)
  goto out;

 if (dir->i_mode & S_ISGID) {
  inode->i_gid = dir->i_gid;
  inode->i_mode &= S_ISGID;
 }
 ctx = alloc_spu_context(SPUFS_I(dir)->i_gang);
 SPUFS_I(inode)->i_ctx = ctx;
 if (!ctx)
  goto out_iput;

 ctx->flags = flags;
 inode->i_op = &simple_dir_inode_operations;
 inode->i_fop = &simple_dir_operations;
 if (flags & SPU_CREATE_NOSCHED)
  ret = spufs_fill_dir(dentry, spufs_dir_nosched_contents,
      mode, ctx);
 else
  ret = spufs_fill_dir(dentry, spufs_dir_contents, mode, ctx);

 if (ret)
  goto out_free_ctx;

 if (spufs_get_sb_info(dir->i_sb)->debug)
  ret = spufs_fill_dir(dentry, spufs_dir_debug_contents,
    mode, ctx);

 if (ret)
  goto out_free_ctx;

 d_instantiate(dentry, inode);
 dget(dentry);
 inc_nlink(dir);
 inc_nlink(dentry->d_inode);
 goto out;

out_free_ctx:
 spu_forget(ctx);
 put_spu_context(ctx);
out_iput:
 iput(inode);
out:
 return ret;
}
