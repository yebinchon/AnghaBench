
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int cycle_kernel_lock () ;
 int iminor (struct inode*) ;
 int mask ;
 int nonseekable_open (struct inode*,struct file*) ;

__attribute__((used)) static int cs5535_gpio_open(struct inode *inode, struct file *file)
{
 u32 m = iminor(inode);

 cycle_kernel_lock();

 if ((mask & (1 << m)) == 0)
  return -EINVAL;

 return nonseekable_open(inode, file);
}
