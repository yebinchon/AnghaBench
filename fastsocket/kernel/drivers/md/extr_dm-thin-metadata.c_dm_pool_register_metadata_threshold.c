
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_pool_metadata {int root_lock; int metadata_sm; } ;
typedef int dm_sm_threshold_fn ;
typedef int dm_block_t ;


 int dm_sm_register_threshold_callback (int ,int ,int ,void*) ;
 int down_write (int *) ;
 int up_write (int *) ;

int dm_pool_register_metadata_threshold(struct dm_pool_metadata *pmd,
     dm_block_t threshold,
     dm_sm_threshold_fn fn,
     void *context)
{
 int r;

 down_write(&pmd->root_lock);
 r = dm_sm_register_threshold_callback(pmd->metadata_sm, threshold, fn, context);
 up_write(&pmd->root_lock);

 return r;
}
