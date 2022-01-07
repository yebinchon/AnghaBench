
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mspro_block_data {scalar_t__ read_only; int usage_count; scalar_t__ card; } ;
struct gendisk {struct mspro_block_data* private_data; } ;
struct block_device {struct gendisk* bd_disk; } ;
typedef int fmode_t ;


 int ENXIO ;
 int EROFS ;
 int FMODE_WRITE ;
 int mspro_block_disk_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mspro_block_bd_open(struct block_device *bdev, fmode_t mode)
{
 struct gendisk *disk = bdev->bd_disk;
 struct mspro_block_data *msb = disk->private_data;
 int rc = -ENXIO;

 mutex_lock(&mspro_block_disk_lock);

 if (msb && msb->card) {
  msb->usage_count++;
  if ((mode & FMODE_WRITE) && msb->read_only)
   rc = -EROFS;
  else
   rc = 0;
 }

 mutex_unlock(&mspro_block_disk_lock);

 return rc;
}
