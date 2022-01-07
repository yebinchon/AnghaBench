
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int num_flush_requests; } ;
struct clone_info {int map; int bio; } ;


 int BUG_ON (int ) ;
 int __issue_target_requests (struct clone_info*,struct dm_target*,int ,int ) ;
 int bio_has_data (int ) ;
 struct dm_target* dm_table_get_target (int ,int ) ;

__attribute__((used)) static int __clone_and_map_empty_flush(struct clone_info *ci)
{
 unsigned target_nr = 0;
 struct dm_target *ti;

 BUG_ON(bio_has_data(ci->bio));
 while ((ti = dm_table_get_target(ci->map, target_nr++)))
  __issue_target_requests(ci, ti, ti->num_flush_requests, 0);

 return 0;
}
