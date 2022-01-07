
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union map_info {int dummy; } map_info ;
struct dm_target {int dummy; } ;
struct bio {int bi_sector; } ;


 int dm_target_offset (struct dm_target*,int ) ;
 int thin_bio_map (struct dm_target*,struct bio*,union map_info*) ;

__attribute__((used)) static int thin_map(struct dm_target *ti, struct bio *bio,
      union map_info *map_context)
{
 bio->bi_sector = dm_target_offset(ti, bio->bi_sector);

 return thin_bio_map(ti, bio, map_context);
}
