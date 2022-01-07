
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; int f_pos; } ;
typedef int loff_t ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int i_mutex; } ;


 int EINVAL ;
 int force_successful_syscall_return () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static loff_t memory_lseek(struct file * file, loff_t offset, int orig)
{
 loff_t ret;

 mutex_lock(&file->f_path.dentry->d_inode->i_mutex);
 switch (orig) {
  case 0:
   file->f_pos = offset;
   ret = file->f_pos;
   force_successful_syscall_return();
   break;
  case 1:
   file->f_pos += offset;
   ret = file->f_pos;
   force_successful_syscall_return();
   break;
  default:
   ret = -EINVAL;
 }
 mutex_unlock(&file->f_path.dentry->d_inode->i_mutex);
 return ret;
}
