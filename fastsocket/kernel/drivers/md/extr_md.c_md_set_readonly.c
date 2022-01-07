
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int ro; int open_mutex; int sysfs_state; int recovery; int gendisk; scalar_t__ pers; int openers; } ;
struct block_device {int dummy; } ;


 int EBUSY ;
 int ENXIO ;
 int MD_RECOVERY_FROZEN ;
 int __md_stop_writes (struct mddev*) ;
 int atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int mdname (struct mddev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int printk (char*,int ) ;
 int set_disk_ro (int ,int) ;
 int sync_blockdev (struct block_device*) ;
 int sysfs_notify_dirent_safe (int ) ;

__attribute__((used)) static int md_set_readonly(struct mddev *mddev, struct block_device *bdev)
{
 int err = 0;
 mutex_lock(&mddev->open_mutex);
 if (atomic_read(&mddev->openers) > !!bdev) {
  printk("md: %s still in use.\n",mdname(mddev));
  err = -EBUSY;
  goto out;
 }
 if (bdev)
  sync_blockdev(bdev);
 if (mddev->pers) {
  __md_stop_writes(mddev);

  err = -ENXIO;
  if (mddev->ro==1)
   goto out;
  mddev->ro = 1;
  set_disk_ro(mddev->gendisk, 1);
  clear_bit(MD_RECOVERY_FROZEN, &mddev->recovery);
  sysfs_notify_dirent_safe(mddev->sysfs_state);
  err = 0;
 }
out:
 mutex_unlock(&mddev->open_mutex);
 return err;
}
