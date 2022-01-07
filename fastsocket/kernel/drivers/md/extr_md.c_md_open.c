
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int open_mutex; int openers; TYPE_1__* gendisk; } ;
struct block_device {TYPE_1__* bd_disk; int bd_dev; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct mddev* private_data; } ;


 int BUG_ON (int) ;
 int ENODEV ;
 int ERESTARTSYS ;
 int atomic_inc (int *) ;
 int check_disk_change (struct block_device*) ;
 int flush_workqueue (int ) ;
 int md_misc_wq ;
 struct mddev* mddev_find (int ) ;
 int mddev_put (struct mddev*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int md_open(struct block_device *bdev, fmode_t mode)
{




 struct mddev *mddev = mddev_find(bdev->bd_dev);
 int err;

 if (!mddev)
  return -ENODEV;

 if (mddev->gendisk != bdev->bd_disk) {



  mddev_put(mddev);

  flush_workqueue(md_misc_wq);

  return -ERESTARTSYS;
 }
 BUG_ON(mddev != bdev->bd_disk->private_data);

 if ((err = mutex_lock_interruptible(&mddev->open_mutex)))
  goto out;

 err = 0;
 atomic_inc(&mddev->openers);
 mutex_unlock(&mddev->open_mutex);

 check_disk_change(bdev);
 out:
 return err;
}
