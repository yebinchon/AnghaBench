
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {scalar_t__ len; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ dm_target_offset (struct dm_target*,scalar_t__) ;

__attribute__((used)) static sector_t max_io_len_target_boundary(sector_t sector, struct dm_target *ti)
{
 sector_t target_offset = dm_target_offset(ti, sector);

 return ti->len - target_offset;
}
