
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * private_data; } ;


 int CRYPTOCOP_MINOR ;
 int EINVAL ;
 int cycle_kernel_lock () ;
 int iminor (struct inode*) ;

__attribute__((used)) static int cryptocop_open(struct inode *inode, struct file *filp)
{
 int p = iminor(inode);

 cycle_kernel_lock();
 if (p != CRYPTOCOP_MINOR) return -EINVAL;

 filp->private_data = ((void*)0);
 return 0;
}
