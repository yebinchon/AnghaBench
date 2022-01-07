
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thin_c {TYPE_1__* origin_dev; } ;
struct bio {int bi_bdev; } ;
struct TYPE_2__ {int bdev; } ;



__attribute__((used)) static void remap_to_origin(struct thin_c *tc, struct bio *bio)
{
 bio->bi_bdev = tc->origin_dev->bdev;
}
