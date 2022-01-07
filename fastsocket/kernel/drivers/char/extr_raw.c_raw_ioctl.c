
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct block_device* private_data; } ;
struct block_device {int dummy; } ;


 int blkdev_ioctl (struct block_device*,int ,unsigned int,unsigned long) ;

__attribute__((used)) static int
raw_ioctl(struct inode *inode, struct file *filp,
    unsigned int command, unsigned long arg)
{
 struct block_device *bdev = filp->private_data;

 return blkdev_ioctl(bdev, 0, command, arg);
}
