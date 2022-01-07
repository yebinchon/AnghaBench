
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int i_mode; TYPE_2__* i_sb; } ;
struct hypfs_sb_info {int lock; } ;
struct TYPE_5__ {TYPE_3__* dentry; } ;
struct file {int f_mode; int private_data; TYPE_1__ f_path; } ;
struct TYPE_8__ {char* i_private; } ;
struct TYPE_7__ {TYPE_4__* d_inode; } ;
struct TYPE_6__ {struct hypfs_sb_info* s_fs_info; } ;


 int EACCES ;
 int ENOMEM ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int GFP_KERNEL ;
 int S_IRUGO ;
 int S_IWUGO ;
 int kstrdup (char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;

__attribute__((used)) static int hypfs_open(struct inode *inode, struct file *filp)
{
 char *data = filp->f_path.dentry->d_inode->i_private;
 struct hypfs_sb_info *fs_info;

 if (filp->f_mode & FMODE_WRITE) {
  if (!(inode->i_mode & S_IWUGO))
   return -EACCES;
 }
 if (filp->f_mode & FMODE_READ) {
  if (!(inode->i_mode & S_IRUGO))
   return -EACCES;
 }

 fs_info = inode->i_sb->s_fs_info;
 if(data) {
  mutex_lock(&fs_info->lock);
  filp->private_data = kstrdup(data, GFP_KERNEL);
  if (!filp->private_data) {
   mutex_unlock(&fs_info->lock);
   return -ENOMEM;
  }
  mutex_unlock(&fs_info->lock);
 }
 return nonseekable_open(inode, filp);
}
