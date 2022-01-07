
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int num_discard_requests; int split_discard_requests; } ;
struct clone_info {int sector; int sector_count; int map; } ;
typedef scalar_t__ sector_t ;


 int EIO ;
 int EOPNOTSUPP ;
 int __issue_target_requests (struct clone_info*,struct dm_target*,int ,scalar_t__) ;
 struct dm_target* dm_table_find_target (int ,int ) ;
 int dm_target_is_valid (struct dm_target*) ;
 int max_io_len (int ,struct dm_target*) ;
 int max_io_len_target_boundary (int ,struct dm_target*) ;
 scalar_t__ min (int ,int ) ;

__attribute__((used)) static int __clone_and_map_discard(struct clone_info *ci)
{
 struct dm_target *ti;
 sector_t len;

 do {
  ti = dm_table_find_target(ci->map, ci->sector);
  if (!dm_target_is_valid(ti))
   return -EIO;







  if (!ti->num_discard_requests)
   return -EOPNOTSUPP;

  if (!ti->split_discard_requests)
   len = min(ci->sector_count, max_io_len_target_boundary(ci->sector, ti));
  else
   len = min(ci->sector_count, max_io_len(ci->sector, ti));

  __issue_target_requests(ci, ti, ti->num_discard_requests, len);

  ci->sector += len;
 } while (ci->sector_count -= len);

 return 0;
}
