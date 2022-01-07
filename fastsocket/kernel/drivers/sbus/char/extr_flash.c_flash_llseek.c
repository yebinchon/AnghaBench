
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {long long f_pos; } ;
struct TYPE_2__ {long long read_size; } ;


 long long EINVAL ;
 TYPE_1__ flash ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static long long
flash_llseek(struct file *file, long long offset, int origin)
{
 lock_kernel();
 switch (origin) {
  case 0:
   file->f_pos = offset;
   break;
  case 1:
   file->f_pos += offset;
   if (file->f_pos > flash.read_size)
    file->f_pos = flash.read_size;
   break;
  case 2:
   file->f_pos = flash.read_size;
   break;
  default:
   unlock_kernel();
   return -EINVAL;
 }
 unlock_kernel();
 return file->f_pos;
}
