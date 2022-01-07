
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct dentry* s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; struct hypfs_sb_info* s_fs_info; } ;
struct inode {int * i_fop; int * i_op; } ;
struct hypfs_sb_info {int update_file; int gid; int uid; int lock; } ;
struct dentry {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HYPFS_MAGIC ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ MACHINE_IS_VM ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int PTR_ERR (int ) ;
 int S_IFDIR ;
 int current_gid () ;
 int current_uid () ;
 struct dentry* d_alloc_root (struct inode*) ;
 int hypfs_create_update_file (struct super_block*,struct dentry*) ;
 int hypfs_diag_create_files (struct super_block*,struct dentry*) ;
 struct inode* hypfs_make_inode (struct super_block*,int) ;
 scalar_t__ hypfs_parse_options (void*,struct super_block*) ;
 int hypfs_s_ops ;
 int hypfs_update_update (struct super_block*) ;
 int hypfs_vm_create_files (struct super_block*,struct dentry*) ;
 int iput (struct inode*) ;
 struct hypfs_sb_info* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pr_info (char*) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;

__attribute__((used)) static int hypfs_fill_super(struct super_block *sb, void *data, int silent)
{
 struct inode *root_inode;
 struct dentry *root_dentry;
 int rc = 0;
 struct hypfs_sb_info *sbi;

 sbi = kzalloc(sizeof(struct hypfs_sb_info), GFP_KERNEL);
 if (!sbi)
  return -ENOMEM;
 mutex_init(&sbi->lock);
 sbi->uid = current_uid();
 sbi->gid = current_gid();
 sb->s_fs_info = sbi;
 sb->s_blocksize = PAGE_CACHE_SIZE;
 sb->s_blocksize_bits = PAGE_CACHE_SHIFT;
 sb->s_magic = HYPFS_MAGIC;
 sb->s_op = &hypfs_s_ops;
 if (hypfs_parse_options(data, sb))
  return -EINVAL;
 root_inode = hypfs_make_inode(sb, S_IFDIR | 0755);
 if (!root_inode)
  return -ENOMEM;
 root_inode->i_op = &simple_dir_inode_operations;
 root_inode->i_fop = &simple_dir_operations;
 sb->s_root = root_dentry = d_alloc_root(root_inode);
 if (!root_dentry) {
  iput(root_inode);
  return -ENOMEM;
 }
 if (MACHINE_IS_VM)
  rc = hypfs_vm_create_files(sb, root_dentry);
 else
  rc = hypfs_diag_create_files(sb, root_dentry);
 if (rc)
  return rc;
 sbi->update_file = hypfs_create_update_file(sb, root_dentry);
 if (IS_ERR(sbi->update_file))
  return PTR_ERR(sbi->update_file);
 hypfs_update_update(sb);
 pr_info("Hypervisor filesystem mounted\n");
 return 0;
}
