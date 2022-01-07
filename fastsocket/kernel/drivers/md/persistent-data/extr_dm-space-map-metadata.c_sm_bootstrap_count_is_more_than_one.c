
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_space_map {int dummy; } ;
typedef int dm_block_t ;



__attribute__((used)) static int sm_bootstrap_count_is_more_than_one(struct dm_space_map *sm,
            dm_block_t b, int *result)
{
 *result = 0;

 return 0;
}
