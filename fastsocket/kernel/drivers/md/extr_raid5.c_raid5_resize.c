
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ array_sectors; scalar_t__ dev_sectors; scalar_t__ recovery_cp; scalar_t__ resync_max_sectors; int recovery; int gendisk; scalar_t__ bitmap; scalar_t__ external_size; int raid_disks; scalar_t__ chunk_sectors; } ;
typedef scalar_t__ sector_t ;


 int EINVAL ;
 int MD_RECOVERY_NEEDED ;
 int bitmap_resize (scalar_t__,scalar_t__,int ,int ) ;
 int md_set_array_sectors (struct mddev*,scalar_t__) ;
 scalar_t__ raid5_size (struct mddev*,scalar_t__,int ) ;
 int revalidate_disk (int ) ;
 int set_bit (int ,int *) ;
 int set_capacity (int ,scalar_t__) ;

__attribute__((used)) static int raid5_resize(struct mddev *mddev, sector_t sectors)
{







 sector_t newsize;
 sectors &= ~((sector_t)mddev->chunk_sectors - 1);
 newsize = raid5_size(mddev, sectors, mddev->raid_disks);
 if (mddev->external_size &&
     mddev->array_sectors > newsize)
  return -EINVAL;
 if (mddev->bitmap) {
  int ret = bitmap_resize(mddev->bitmap, sectors, 0, 0);
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
