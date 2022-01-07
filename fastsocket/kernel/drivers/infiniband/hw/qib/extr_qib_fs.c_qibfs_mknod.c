
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; struct file_operations const* i_fop; int * i_op; void* i_private; int i_atime; int i_ctime; int i_mtime; scalar_t__ i_blocks; scalar_t__ i_gid; scalar_t__ i_uid; int i_sb; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;


 int CURRENT_TIME ;
 int EPERM ;
 int S_IFDIR ;
 int S_IFMT ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int inc_nlink (struct inode*) ;
 struct inode* new_inode (int ) ;
 int simple_dir_inode_operations ;

__attribute__((used)) static int qibfs_mknod(struct inode *dir, struct dentry *dentry,
         int mode, const struct file_operations *fops,
         void *data)
{
 int error;
 struct inode *inode = new_inode(dir->i_sb);

 if (!inode) {
  error = -EPERM;
  goto bail;
 }

 inode->i_mode = mode;
 inode->i_uid = 0;
 inode->i_gid = 0;
 inode->i_blocks = 0;
 inode->i_atime = CURRENT_TIME;
 inode->i_mtime = inode->i_atime;
 inode->i_ctime = inode->i_atime;
 inode->i_private = data;
 if ((mode & S_IFMT) == S_IFDIR) {
  inode->i_op = &simple_dir_inode_operations;
  inc_nlink(inode);
  inc_nlink(dir);
 }

 inode->i_fop = fops;

 d_instantiate(dentry, inode);
 error = 0;

bail:
 return error;
}
