
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_space_map {int dummy; } ;
typedef int dm_block_t ;


 int DMERR (char*) ;
 int EINVAL ;

__attribute__((used)) static int sm_bootstrap_extend(struct dm_space_map *sm, dm_block_t extra_blocks)
{
 DMERR("bootstrap doesn't support extend");

 return -EINVAL;
}
