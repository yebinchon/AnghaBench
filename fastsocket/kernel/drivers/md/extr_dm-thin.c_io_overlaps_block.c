
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int sectors_per_block; } ;
struct bio {int bi_size; } ;


 int SECTOR_SHIFT ;

__attribute__((used)) static int io_overlaps_block(struct pool *pool, struct bio *bio)
{
 return bio->bi_size == (pool->sectors_per_block << SECTOR_SHIFT);
}
