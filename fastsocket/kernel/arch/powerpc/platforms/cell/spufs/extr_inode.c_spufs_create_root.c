
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_root; } ;
struct inode {int * i_fop; int * i_op; } ;
struct TYPE_2__ {int * i_ctx; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 TYPE_1__* SPUFS_I (struct inode*) ;
 int S_IFDIR ;
 int d_alloc_root (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int iput (struct inode*) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;
 int spu_management_ops ;
 struct inode* spufs_new_inode (struct super_block*,int) ;
 int spufs_parse_options (struct super_block*,void*,struct inode*) ;

__attribute__((used)) static int
spufs_create_root(struct super_block *sb, void *data)
{
 struct inode *inode;
 int ret;

 ret = -ENODEV;
 if (!spu_management_ops)
  goto out;

 ret = -ENOMEM;
 inode = spufs_new_inode(sb, S_IFDIR | 0775);
 if (!inode)
  goto out;

 inode->i_op = &simple_dir_inode_operations;
 inode->i_fop = &simple_dir_operations;
 SPUFS_I(inode)->i_ctx = ((void*)0);
 inc_nlink(inode);

 ret = -EINVAL;
 if (!spufs_parse_options(sb, data, inode))
  goto out_iput;

 ret = -ENOMEM;
 sb->s_root = d_alloc_root(inode);
 if (!sb->s_root)
  goto out_iput;

 return 0;
out_iput:
 iput(inode);
out:
 return ret;
}
