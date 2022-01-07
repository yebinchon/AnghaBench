
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int TW_IOCTL_ERROR_OS_ENODEV ;
 int cycle_kernel_lock () ;
 unsigned int iminor (struct inode*) ;
 unsigned int twa_device_extension_count ;

__attribute__((used)) static int twa_chrdev_open(struct inode *inode, struct file *file)
{
 unsigned int minor_number;
 int retval = TW_IOCTL_ERROR_OS_ENODEV;

 cycle_kernel_lock();
 minor_number = iminor(inode);
 if (minor_number >= twa_device_extension_count)
  goto out;
 retval = 0;
out:
 return retval;
}
