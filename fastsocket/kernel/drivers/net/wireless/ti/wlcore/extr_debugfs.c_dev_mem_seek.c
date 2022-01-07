
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_pos; } ;
typedef int loff_t ;


 int EINVAL ;



__attribute__((used)) static loff_t dev_mem_seek(struct file *file, loff_t offset, int orig)
{
 loff_t ret;


 if (offset % 4)
  return -EINVAL;

 switch (orig) {
 case 128:
  file->f_pos = offset;
  ret = file->f_pos;
  break;
 case 129:
  file->f_pos += offset;
  ret = file->f_pos;
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
