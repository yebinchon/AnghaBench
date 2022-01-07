
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct spufs_inode_info {struct inode vfs_inode; scalar_t__ i_openers; int * i_ctx; int * i_gang; } ;


 int GFP_KERNEL ;
 struct spufs_inode_info* kmem_cache_alloc (int ,int ) ;
 int spufs_inode_cache ;

__attribute__((used)) static struct inode *
spufs_alloc_inode(struct super_block *sb)
{
 struct spufs_inode_info *ei;

 ei = kmem_cache_alloc(spufs_inode_cache, GFP_KERNEL);
 if (!ei)
  return ((void*)0);

 ei->i_gang = ((void*)0);
 ei->i_ctx = ((void*)0);
 ei->i_openers = 0;

 return &ei->vfs_inode;
}
