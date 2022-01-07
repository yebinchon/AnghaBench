
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_blk_data {int usage; scalar_t__ read_only; } ;
struct block_device {int bd_disk; } ;
typedef int fmode_t ;


 int ENXIO ;
 int EROFS ;
 int FMODE_WRITE ;
 int check_disk_change (struct block_device*) ;
 struct mmc_blk_data* mmc_blk_get (int ) ;
 int mmc_blk_put (struct mmc_blk_data*) ;

__attribute__((used)) static int mmc_blk_open(struct block_device *bdev, fmode_t mode)
{
 struct mmc_blk_data *md = mmc_blk_get(bdev->bd_disk);
 int ret = -ENXIO;

 if (md) {
  if (md->usage == 2)
   check_disk_change(bdev);
  ret = 0;

  if ((mode & FMODE_WRITE) && md->read_only) {
   mmc_blk_put(md);
   ret = -EROFS;
  }
 }

 return ret;
}
