
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int dummy; } ;
struct bio {int dummy; } ;


 scalar_t__ WRITE ;
 scalar_t__ bio_data_dir (struct bio*) ;
 scalar_t__ io_overlaps_block (struct pool*,struct bio*) ;

__attribute__((used)) static int io_overwrites_block(struct pool *pool, struct bio *bio)
{
 return (bio_data_dir(bio) == WRITE) &&
  io_overlaps_block(pool, bio);
}
