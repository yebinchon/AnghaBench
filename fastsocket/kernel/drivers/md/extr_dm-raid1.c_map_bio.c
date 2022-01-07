
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mirror {TYPE_1__* dev; } ;
struct bio {int bi_sector; int bi_bdev; } ;
struct TYPE_2__ {int bdev; } ;


 int map_sector (struct mirror*,struct bio*) ;

__attribute__((used)) static void map_bio(struct mirror *m, struct bio *bio)
{
 bio->bi_bdev = m->dev->bdev;
 bio->bi_sector = map_sector(m, bio);
}
