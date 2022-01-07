
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_pos; } ;
typedef int loff_t ;


 int EINVAL ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static loff_t isapnp_proc_bus_lseek(struct file *file, loff_t off, int whence)
{
 loff_t new = -1;

 lock_kernel();
 switch (whence) {
 case 0:
  new = off;
  break;
 case 1:
  new = file->f_pos + off;
  break;
 case 2:
  new = 256 + off;
  break;
 }
 if (new < 0 || new > 256) {
  unlock_kernel();
  return -EINVAL;
 }
 unlock_kernel();
 return (file->f_pos = new);
}
