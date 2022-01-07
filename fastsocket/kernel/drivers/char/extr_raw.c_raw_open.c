
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_8__ {TYPE_2__* dentry; } ;
struct file {int f_mode; struct block_device* private_data; TYPE_3__ f_path; int f_mapping; int f_flags; int * f_op; } ;
struct block_device {TYPE_5__* bd_inode; } ;
struct TYPE_10__ {int i_mapping; } ;
struct TYPE_9__ {int inuse; struct block_device* binding; } ;
struct TYPE_7__ {TYPE_1__* d_inode; } ;
struct TYPE_6__ {int i_mapping; } ;


 int ENODEV ;
 int O_DIRECT ;
 int bd_claim (struct block_device*,int (*) (struct inode*,struct file*)) ;
 int bd_release (struct block_device*) ;
 int bdev_logical_block_size (struct block_device*) ;
 int blkdev_get (struct block_device*,int ) ;
 int blkdev_put (struct block_device*,int ) ;
 int igrab (TYPE_5__*) ;
 int iminor (struct inode*) ;
 int lock_kernel () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int raw_ctl_fops ;
 TYPE_4__* raw_devices ;
 int raw_mutex ;
 int set_blocksize (struct block_device*,int ) ;
 int unlock_kernel () ;

__attribute__((used)) static int raw_open(struct inode *inode, struct file *filp)
{
 const int minor = iminor(inode);
 struct block_device *bdev;
 int err;

 if (minor == 0) {
  filp->f_op = &raw_ctl_fops;
  return 0;
 }

 lock_kernel();
 mutex_lock(&raw_mutex);




 bdev = raw_devices[minor].binding;
 err = -ENODEV;
 if (!bdev)
  goto out;
 igrab(bdev->bd_inode);
 err = blkdev_get(bdev, filp->f_mode);
 if (err)
  goto out;
 err = bd_claim(bdev, raw_open);
 if (err)
  goto out1;
 err = set_blocksize(bdev, bdev_logical_block_size(bdev));
 if (err)
  goto out2;
 filp->f_flags |= O_DIRECT;
 filp->f_mapping = bdev->bd_inode->i_mapping;
 if (++raw_devices[minor].inuse == 1)
  filp->f_path.dentry->d_inode->i_mapping =
   bdev->bd_inode->i_mapping;
 filp->private_data = bdev;
 mutex_unlock(&raw_mutex);
 unlock_kernel();
 return 0;

out2:
 bd_release(bdev);
out1:
 blkdev_put(bdev, filp->f_mode);
out:
 mutex_unlock(&raw_mutex);
 unlock_kernel();
 return err;
}
