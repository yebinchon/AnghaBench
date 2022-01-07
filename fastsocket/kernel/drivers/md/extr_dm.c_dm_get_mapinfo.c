
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union map_info {int dummy; } map_info ;
struct dm_target_io {union map_info info; } ;
struct bio {scalar_t__ bi_private; } ;



union map_info *dm_get_mapinfo(struct bio *bio)
{
 if (bio && bio->bi_private)
  return &((struct dm_target_io *)bio->bi_private)->info;
 return ((void*)0);
}
