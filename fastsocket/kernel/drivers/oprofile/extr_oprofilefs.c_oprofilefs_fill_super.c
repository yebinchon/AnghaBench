
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_time_gran; struct dentry* s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; } ;
struct inode {int * i_fop; int * i_op; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int OPROFILEFS_MAGIC ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int S_IFDIR ;
 struct dentry* d_alloc_root (struct inode*) ;
 int iput (struct inode*) ;
 int oprofile_create_files (struct super_block*,struct dentry*) ;
 struct inode* oprofilefs_get_inode (struct super_block*,int) ;
 int s_ops ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;

__attribute__((used)) static int oprofilefs_fill_super(struct super_block *sb, void *data, int silent)
{
 struct inode *root_inode;
 struct dentry *root_dentry;

 sb->s_blocksize = PAGE_CACHE_SIZE;
 sb->s_blocksize_bits = PAGE_CACHE_SHIFT;
 sb->s_magic = OPROFILEFS_MAGIC;
 sb->s_op = &s_ops;
 sb->s_time_gran = 1;

 root_inode = oprofilefs_get_inode(sb, S_IFDIR | 0755);
 if (!root_inode)
  return -ENOMEM;
 root_inode->i_op = &simple_dir_inode_operations;
 root_inode->i_fop = &simple_dir_operations;
 root_dentry = d_alloc_root(root_inode);
 if (!root_dentry) {
  iput(root_inode);
  return -ENOMEM;
 }

 sb->s_root = root_dentry;

 oprofile_create_files(sb, root_dentry);


 return 0;
}
