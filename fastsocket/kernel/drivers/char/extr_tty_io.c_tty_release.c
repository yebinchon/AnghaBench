
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int lock_kernel () ;
 int tty_release_dev (struct file*) ;
 int unlock_kernel () ;

__attribute__((used)) static int tty_release(struct inode *inode, struct file *filp)
{
 lock_kernel();
 tty_release_dev(filp);
 unlock_kernel();
 return 0;
}
