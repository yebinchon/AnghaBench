
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_space_map {int (* extend ) (struct dm_space_map*,int ) ;} ;
typedef int dm_block_t ;


 int stub1 (struct dm_space_map*,int ) ;

__attribute__((used)) static inline int dm_sm_extend(struct dm_space_map *sm, dm_block_t extra_blocks)
{
 return sm->extend(sm, extra_blocks);
}
