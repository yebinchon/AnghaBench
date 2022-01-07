
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int s_root; struct hypfs_sb_info* s_fs_info; } ;
struct kiocb {TYPE_4__* ki_filp; } ;
struct iovec {int dummy; } ;
struct hypfs_sb_info {scalar_t__ last_update; int lock; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_7__ {TYPE_2__* dentry; } ;
struct TYPE_8__ {TYPE_3__ f_path; } ;
struct TYPE_6__ {TYPE_1__* d_inode; } ;
struct TYPE_5__ {struct super_block* i_sb; } ;


 int EBUSY ;
 scalar_t__ MACHINE_IS_VM ;
 scalar_t__ get_seconds () ;
 int hypfs_delete_tree (int ) ;
 int hypfs_diag_create_files (struct super_block*,int ) ;
 int hypfs_update_update (struct super_block*) ;
 int hypfs_vm_create_files (struct super_block*,int ) ;
 size_t iov_length (struct iovec const*,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static ssize_t hypfs_aio_write(struct kiocb *iocb, const struct iovec *iov,
         unsigned long nr_segs, loff_t offset)
{
 int rc;
 struct super_block *sb;
 struct hypfs_sb_info *fs_info;
 size_t count = iov_length(iov, nr_segs);

 sb = iocb->ki_filp->f_path.dentry->d_inode->i_sb;
 fs_info = sb->s_fs_info;
 mutex_lock(&fs_info->lock);
 if (fs_info->last_update == get_seconds()) {
  rc = -EBUSY;
  goto out;
 }
 hypfs_delete_tree(sb->s_root);
 if (MACHINE_IS_VM)
  rc = hypfs_vm_create_files(sb, sb->s_root);
 else
  rc = hypfs_diag_create_files(sb, sb->s_root);
 if (rc) {
  pr_err("Updating the hypfs tree failed\n");
  hypfs_delete_tree(sb->s_root);
  goto out;
 }
 hypfs_update_update(sb);
 rc = count;
out:
 mutex_unlock(&fs_info->lock);
 return rc;
}
