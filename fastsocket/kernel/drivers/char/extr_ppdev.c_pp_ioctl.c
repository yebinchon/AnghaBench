
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int lock_kernel () ;
 long pp_do_ioctl (struct file*,unsigned int,unsigned long) ;
 int unlock_kernel () ;

__attribute__((used)) static long pp_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 long ret;
 lock_kernel();
 ret = pp_do_ioctl(file, cmd, arg);
 unlock_kernel();
 return ret;
}
