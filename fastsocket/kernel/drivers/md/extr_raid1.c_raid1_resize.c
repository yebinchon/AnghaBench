
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ array_sectors; scalar_t__ dev_sectors; scalar_t__ recovery_cp; scalar_t__ resync_max_sectors; int recovery; int gendisk; scalar_t__ bitmap; scalar_t__ external_size; } ;
typedef scalar_t__ sector_t ;


 int EINVAL ;
 int MD_RECOVERY_NEEDED ;
 int bitmap_resize (scalar_t__,scalar_t__,int ,int ) ;
 int md_set_array_sectors (struct mddev*,scalar_t__) ;
 scalar_t__ raid1_size (struct mddev*,scalar_t__,int ) ;
 int revalidate_disk (int ) ;
 int set_bit (int ,int *) ;
 int set_capacity (int ,scalar_t__) ;

__attribute__((used)) static int raid1_resize(struct mddev *mddev, sector_t sectors)
{







 sector_t newsize = raid1_size(mddev, sectors, 0);
 if (mddev->external_size &&
     mddev->array_sectors > newsize)
  return -EINVAL;
 if (mddev->bitmap) {
  int ret = bitmap_resize(mddev->bitmap, newsize, 0, 0);
  if (ret)
   return ret;
 }
 md_set_array_sectors(mddev, newsize);
 set_capacity(mddev->gendisk, mddev->array_sectors);
 revalidate_disk(mddev->gendisk);
 if (sectors > mddev->dev_sectors &&
     mddev->recovery_cp > mddev->dev_sectors) {
  mddev->recovery_cp = mddev->dev_sectors;
  set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
 }
 mddev->dev_sectors = sectors;
 mddev->resync_max_sectors = sectors;
 return 0;
}
