
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thin_c {TYPE_1__* pool_dev; struct pool* pool; } ;
struct pool {int sectors_per_block_shift; int sectors_per_block; } ;
struct bio {int bi_sector; int bi_bdev; } ;
typedef int sector_t ;
typedef int dm_block_t ;
struct TYPE_2__ {int bdev; } ;


 scalar_t__ block_size_is_power_of_two (struct pool*) ;
 int sector_div (int,int) ;

__attribute__((used)) static void remap(struct thin_c *tc, struct bio *bio, dm_block_t block)
{
 struct pool *pool = tc->pool;
 sector_t bi_sector = bio->bi_sector;

 bio->bi_bdev = tc->pool_dev->bdev;
 if (block_size_is_power_of_two(pool))
  bio->bi_sector = (block << pool->sectors_per_block_shift) |
    (bi_sector & (pool->sectors_per_block - 1));
 else
  bio->bi_sector = (block * pool->sectors_per_block) +
     sector_div(bi_sector, pool->sectors_per_block);
}
