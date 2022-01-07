
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_space_map {int (* register_threshold_callback ) (struct dm_space_map*,int ,int ,void*) ;} ;
typedef int dm_sm_threshold_fn ;
typedef int dm_block_t ;


 int EINVAL ;
 int stub1 (struct dm_space_map*,int ,int ,void*) ;

__attribute__((used)) static inline int dm_sm_register_threshold_callback(struct dm_space_map *sm,
          dm_block_t threshold,
          dm_sm_threshold_fn fn,
          void *context)
{
 if (sm->register_threshold_callback)
  return sm->register_threshold_callback(sm, threshold, fn, context);

 return -EINVAL;
}
