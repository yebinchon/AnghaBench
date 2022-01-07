
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mutex; } ;
struct file {int f_pos; TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static loff_t cpuid_seek(struct file *file, loff_t offset, int orig)
{
 loff_t ret;
 struct inode *inode = file->f_mapping->host;

 mutex_lock(&inode->i_mutex);
 switch (orig) {
 case 0:
  file->f_pos = offset;
  ret = file->f_pos;
  break;
 case 1:
  file->f_pos += offset;
  ret = file->f_pos;
  break;
 default:
  ret = -EINVAL;
 }
 mutex_unlock(&inode->i_mutex);
 return ret;
}
