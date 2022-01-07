
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct file {int dummy; } ;


 int do_ioctl (struct tty_struct*,struct file*,unsigned int,unsigned long) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int ioctl(struct tty_struct *tty, struct file *file,
   unsigned int cmd, unsigned long arg)
{
 int ret;
 lock_kernel();
 ret = do_ioctl(tty, file, cmd, arg);
 unlock_kernel();
 return ret;
}
