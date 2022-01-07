
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ f_pos; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ EINVAL ;
 int NVRAM_BYTES ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static loff_t nvram_llseek(struct file *file, loff_t offset, int origin)
{
 lock_kernel();
 switch (origin) {
 case 0:

  break;
 case 1:
  offset += file->f_pos;
  break;
 case 2:
  offset += NVRAM_BYTES;
  break;
 }
 unlock_kernel();
 return (offset >= 0) ? (file->f_pos = offset) : -EINVAL;
}
