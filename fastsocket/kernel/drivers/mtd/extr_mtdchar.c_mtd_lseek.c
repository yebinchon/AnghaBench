
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {scalar_t__ size; } ;
struct mtd_file_info {struct mtd_info* mtd; } ;
struct file {scalar_t__ f_pos; struct mtd_file_info* private_data; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ EINVAL ;




__attribute__((used)) static loff_t mtd_lseek (struct file *file, loff_t offset, int orig)
{
 struct mtd_file_info *mfi = file->private_data;
 struct mtd_info *mtd = mfi->mtd;

 switch (orig) {
 case 128:
  break;
 case 130:
  offset += file->f_pos;
  break;
 case 129:
  offset += mtd->size;
  break;
 default:
  return -EINVAL;
 }

 if (offset >= 0 && offset <= mtd->size)
  return file->f_pos = offset;

 return -EINVAL;
}
