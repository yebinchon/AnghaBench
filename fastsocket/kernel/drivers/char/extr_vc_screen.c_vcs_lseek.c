
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {int f_pos; TYPE_2__ f_path; } ;
typedef int loff_t ;
struct TYPE_3__ {int d_inode; } ;


 int EINVAL ;
 int con_buf_mtx ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vcs_size (int ) ;

__attribute__((used)) static loff_t vcs_lseek(struct file *file, loff_t offset, int orig)
{
 int size;

 mutex_lock(&con_buf_mtx);
 size = vcs_size(file->f_path.dentry->d_inode);
 switch (orig) {
  default:
   mutex_unlock(&con_buf_mtx);
   return -EINVAL;
  case 2:
   offset += size;
   break;
  case 1:
   offset += file->f_pos;
  case 0:
   break;
 }
 if (offset < 0 || offset > size) {
  mutex_unlock(&con_buf_mtx);
  return -EINVAL;
 }
 file->f_pos = offset;
 mutex_unlock(&con_buf_mtx);
 return file->f_pos;
}
