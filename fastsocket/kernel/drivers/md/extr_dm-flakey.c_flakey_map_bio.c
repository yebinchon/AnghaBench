
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct flakey_c {TYPE_1__* dev; } ;
struct dm_target {struct flakey_c* private; } ;
struct bio {int bi_sector; int bi_bdev; } ;
struct TYPE_2__ {int bdev; } ;


 scalar_t__ bio_sectors (struct bio*) ;
 int flakey_map_sector (struct dm_target*,int ) ;

__attribute__((used)) static void flakey_map_bio(struct dm_target *ti, struct bio *bio)
{
 struct flakey_c *fc = ti->private;

 bio->bi_bdev = fc->dev->bdev;
 if (bio_sectors(bio))
  bio->bi_sector = flakey_map_sector(ti, bio->bi_sector);
}
