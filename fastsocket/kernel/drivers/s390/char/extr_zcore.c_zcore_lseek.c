
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_pos; } ;
typedef int loff_t ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zcore_mutex ;

__attribute__((used)) static loff_t zcore_lseek(struct file *file, loff_t offset, int orig)
{
 loff_t rc;

 mutex_lock(&zcore_mutex);
 switch (orig) {
 case 0:
  file->f_pos = offset;
  rc = file->f_pos;
  break;
 case 1:
  file->f_pos += offset;
  rc = file->f_pos;
  break;
 default:
  rc = -EINVAL;
 }
 mutex_unlock(&zcore_mutex);
 return rc;
}
