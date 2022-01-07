
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int fmode_t ;


 int dasd_do_ioctl (struct block_device*,int ,unsigned int,unsigned long) ;
 int lock_kernel () ;
 int unlock_kernel () ;

int dasd_ioctl(struct block_device *bdev, fmode_t mode,
        unsigned int cmd, unsigned long arg)
{
 int rc;

 lock_kernel();
 rc = dasd_do_ioctl(bdev, mode, cmd, arg);
 unlock_kernel();
 return rc;
}
