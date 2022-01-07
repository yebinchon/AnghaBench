
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 scalar_t__ D7S_MINOR ;
 int ENODEV ;
 int atomic_inc (int *) ;
 int cycle_kernel_lock () ;
 int d7s_users ;
 scalar_t__ iminor (struct inode*) ;

__attribute__((used)) static int d7s_open(struct inode *inode, struct file *f)
{
 if (D7S_MINOR != iminor(inode))
  return -ENODEV;
 cycle_kernel_lock();
 atomic_inc(&d7s_users);
 return 0;
}
