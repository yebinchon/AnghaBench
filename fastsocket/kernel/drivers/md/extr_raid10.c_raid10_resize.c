
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int far_copies; int far_offset; } ;
struct r10conf {scalar_t__ dev_sectors; TYPE_1__ geo; } ;
struct mddev {scalar_t__ reshape_position; scalar_t__ array_sectors; scalar_t__ dev_sectors; scalar_t__ recovery_cp; scalar_t__ resync_max_sectors; int recovery; int gendisk; scalar_t__ bitmap; scalar_t__ external_size; struct r10conf* private; } ;
typedef scalar_t__ sector_t ;


 int EBUSY ;
 int EINVAL ;
 int MD_RECOVERY_NEEDED ;
 scalar_t__ MaxSector ;
 int bitmap_resize (scalar_t__,scalar_t__,int ,int ) ;
 int calc_sectors (struct r10conf*,scalar_t__) ;
 int md_set_array_sectors (struct mddev*,scalar_t__) ;
 scalar_t__ raid10_size (struct mddev*,scalar_t__,int ) ;
 int revalidate_disk (int ) ;
 int set_bit (int ,int *) ;
 int set_capacity (int ,scalar_t__) ;

__attribute__((used)) static int raid10_resize(struct mddev *mddev, sector_t sectors)
{
 struct r10conf *conf = mddev->private;
 sector_t oldsize, size;

 if (mddev->reshape_position != MaxSector)
  return -EBUSY;

 if (conf->geo.far_copies > 1 && !conf->geo.far_offset)
  return -EINVAL;

 oldsize = raid10_size(mddev, 0, 0);
 size = raid10_size(mddev, sectors, 0);
 if (mddev->external_size &&
     mddev->array_sectors > size)
  return -EINVAL;
 if (mddev->bitmap) {
  int ret = bitmap_resize(mddev->bitmap, size, 0, 0);
  if (ret)
   return ret;
 }
 md_set_array_sectors(mddev, size);
 set_capacity(mddev->gendisk, mddev->array_sectors);
 revalidate_disk(mddev->gendisk);
 if (sectors > mddev->dev_sectors &&
     mddev->recovery_cp > oldsize) {
  mddev->recovery_cp = oldsize;
  set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
 }
 calc_sectors(conf, sectors);
 mddev->dev_sectors = conf->dev_sectors;
 mddev->resync_max_sectors = size;
 return 0;
}
