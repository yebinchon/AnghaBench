
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_flags; int f_pos; } ;
typedef int loff_t ;


 int EINVAL ;
 int ESPIPE ;
 int O_ACCMODE ;
 int O_RDONLY ;
 int PAGE_SIZE ;

__attribute__((used)) static loff_t ur_llseek(struct file *file, loff_t offset, int whence)
{
 loff_t newpos;

 if ((file->f_flags & O_ACCMODE) != O_RDONLY)
  return -ESPIPE;
 if (offset % PAGE_SIZE)
  return -ESPIPE;
 switch (whence) {
 case 0:
  newpos = offset;
  break;
 case 1:
  newpos = file->f_pos + offset;
  break;
 default:
  return -EINVAL;
 }
 file->f_pos = newpos;
 return newpos;
}
