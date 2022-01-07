
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linear_c {scalar_t__ start; } ;
struct dm_target {struct linear_c* private; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ dm_target_offset (struct dm_target*,scalar_t__) ;

__attribute__((used)) static sector_t linear_map_sector(struct dm_target *ti, sector_t bi_sector)
{
 struct linear_c *lc = ti->private;

 return lc->start + dm_target_offset(ti, bi_sector);
}
