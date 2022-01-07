
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spufs_inode_info {int i_ctx; } ;
struct inode {int dummy; } ;
struct file {int private_data; } ;


 struct spufs_inode_info* SPUFS_I (struct inode*) ;

__attribute__((used)) static int
spufs_regs_open(struct inode *inode, struct file *file)
{
 struct spufs_inode_info *i = SPUFS_I(inode);
 file->private_data = i->i_ctx;
 return 0;
}
