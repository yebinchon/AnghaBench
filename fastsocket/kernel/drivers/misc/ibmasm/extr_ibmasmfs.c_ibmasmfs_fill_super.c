
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_time_gran; struct dentry* s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; } ;
struct inode {int i_fop; int * i_op; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int IBMASMFS_MAGIC ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int S_IFDIR ;
 struct dentry* d_alloc_root (struct inode*) ;
 int ibmasmfs_create_files (struct super_block*,struct dentry*) ;
 int ibmasmfs_dir_ops ;
 struct inode* ibmasmfs_make_inode (struct super_block*,int) ;
 int ibmasmfs_s_ops ;
 int iput (struct inode*) ;
 int simple_dir_inode_operations ;

__attribute__((used)) static int ibmasmfs_fill_super (struct super_block *sb, void *data, int silent)
{
 struct inode *root;
 struct dentry *root_dentry;

 sb->s_blocksize = PAGE_CACHE_SIZE;
 sb->s_blocksize_bits = PAGE_CACHE_SHIFT;
 sb->s_magic = IBMASMFS_MAGIC;
 sb->s_op = &ibmasmfs_s_ops;
 sb->s_time_gran = 1;

 root = ibmasmfs_make_inode (sb, S_IFDIR | 0500);
 if (!root)
  return -ENOMEM;

 root->i_op = &simple_dir_inode_operations;
 root->i_fop = ibmasmfs_dir_ops;

 root_dentry = d_alloc_root(root);
 if (!root_dentry) {
  iput(root);
  return -ENOMEM;
 }
 sb->s_root = root_dentry;

 ibmasmfs_create_files(sb, root_dentry);
 return 0;
}
