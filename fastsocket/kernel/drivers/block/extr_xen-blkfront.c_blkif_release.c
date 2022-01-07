
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {scalar_t__ state; } ;
struct gendisk {struct blkfront_info* private_data; } ;
struct block_device {scalar_t__ bd_openers; } ;
struct blkfront_info {int mutex; struct xenbus_device* xbdev; } ;
typedef int fmode_t ;


 scalar_t__ XenbusStateClosing ;
 struct block_device* bdget_disk (struct gendisk*,int ) ;
 int bdput (struct block_device*) ;
 int kfree (struct blkfront_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xenbus_frontend_closed (struct xenbus_device*) ;
 int xlvbd_release_gendisk (struct blkfront_info*) ;

__attribute__((used)) static int blkif_release(struct gendisk *disk, fmode_t mode)
{
 struct blkfront_info *info = disk->private_data;
 struct block_device *bdev;
 struct xenbus_device *xbdev;

 bdev = bdget_disk(disk, 0);

 if (bdev->bd_openers)
  goto out;






 mutex_lock(&info->mutex);
 xbdev = info->xbdev;

 if (xbdev && xbdev->state == XenbusStateClosing) {

  xlvbd_release_gendisk(info);
  xenbus_frontend_closed(info->xbdev);
  }

 mutex_unlock(&info->mutex);

 if (!xbdev) {

  xlvbd_release_gendisk(info);
  disk->private_data = ((void*)0);
  kfree(info);
 }

out:
 bdput(bdev);
 return 0;
}
