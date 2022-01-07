
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long __mptctl_ioctl (struct file*,unsigned int,unsigned long) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static long
mptctl_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 long ret;
 lock_kernel();
 ret = __mptctl_ioctl(file, cmd, arg);
 unlock_kernel();
 return ret;
}
