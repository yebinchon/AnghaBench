
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * backing_dev_info; } ;
struct inode {TYPE_1__* i_mapping; TYPE_1__ i_data; } ;
struct file {int f_mode; } ;
struct block_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ inuse; struct block_device* binding; } ;


 int bd_release (struct block_device*) ;
 int blkdev_put (struct block_device*,int ) ;
 int default_backing_dev_info ;
 int iminor (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* raw_devices ;
 int raw_mutex ;

__attribute__((used)) static int raw_release(struct inode *inode, struct file *filp)
{
 const int minor= iminor(inode);
 struct block_device *bdev;

 mutex_lock(&raw_mutex);
 bdev = raw_devices[minor].binding;
 if (--raw_devices[minor].inuse == 0) {

  inode->i_mapping = &inode->i_data;
  inode->i_mapping->backing_dev_info = &default_backing_dev_info;
 }
 mutex_unlock(&raw_mutex);

 bd_release(bdev);
 blkdev_put(bdev, filp->f_mode);
 return 0;
}
