
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int __tty_open (struct inode*,struct file*) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int tty_open(struct inode *inode, struct file *filp)
{
 int ret;

 lock_kernel();
 ret = __tty_open(inode, filp);
 unlock_kernel();
 return ret;
}
