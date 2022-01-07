
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int nodename; int dev; } ;
struct gendisk {struct blkfront_info* private_data; } ;
struct block_device {int bd_mutex; int bd_openers; } ;
struct blkfront_info {int mutex; int * xbdev; struct gendisk* gd; } ;


 struct block_device* bdget_disk (struct gendisk*,int ) ;
 int bdput (struct block_device*) ;
 int blkif_free (struct blkfront_info*,int ) ;
 int dev_dbg (int *,char*,int ) ;
 struct blkfront_info* dev_get_drvdata (int *) ;
 int kfree (struct blkfront_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xlvbd_release_gendisk (struct blkfront_info*) ;

__attribute__((used)) static int blkfront_remove(struct xenbus_device *xbdev)
{
 struct blkfront_info *info = dev_get_drvdata(&xbdev->dev);
 struct block_device *bdev = ((void*)0);
 struct gendisk *disk;

 dev_dbg(&xbdev->dev, "%s removed", xbdev->nodename);

 blkif_free(info, 0);

 mutex_lock(&info->mutex);

 disk = info->gd;
 if (disk)
  bdev = bdget_disk(disk, 0);

 info->xbdev = ((void*)0);
 mutex_unlock(&info->mutex);

 if (!bdev) {
  kfree(info);
  return 0;
 }







 mutex_lock(&bdev->bd_mutex);
 info = disk->private_data;

 if (info && !bdev->bd_openers) {
  xlvbd_release_gendisk(info);
  disk->private_data = ((void*)0);
  kfree(info);
 }

 mutex_unlock(&bdev->bd_mutex);
 bdput(bdev);

 return 0;
}
