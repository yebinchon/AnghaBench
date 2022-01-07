
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dm_space_map {int dummy; } ;
typedef int dm_block_t ;


 int sm_disk_get_count (struct dm_space_map*,int ,int*) ;

__attribute__((used)) static int sm_disk_count_is_more_than_one(struct dm_space_map *sm, dm_block_t b,
       int *result)
{
 int r;
 uint32_t count;

 r = sm_disk_get_count(sm, b, &count);
 if (r)
  return r;

 return count > 1;
}
