
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct linear_c {TYPE_1__* dev; } ;
struct dm_target {struct linear_c* private; } ;
struct bio {int bi_sector; int bi_bdev; } ;
struct TYPE_2__ {int bdev; } ;


 scalar_t__ bio_sectors (struct bio*) ;
 int linear_map_sector (struct dm_target*,int ) ;

__attribute__((used)) static void linear_map_bio(struct dm_target *ti, struct bio *bio)
{
 struct linear_c *lc = ti->private;

 bio->bi_bdev = lc->dev->bdev;
 if (bio_sectors(bio))
  bio->bi_sector = linear_map_sector(ti, bio->bi_sector);
}
