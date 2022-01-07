
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union map_info {int dummy; } map_info ;
struct dm_target {int dummy; } ;
struct bio {int dummy; } ;


 int DM_MAPIO_REMAPPED ;
 int linear_map_bio (struct dm_target*,struct bio*) ;

__attribute__((used)) static int linear_map(struct dm_target *ti, struct bio *bio,
        union map_info *map_context)
{
 linear_map_bio(ti, bio);

 return DM_MAPIO_REMAPPED;
}
