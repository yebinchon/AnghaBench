
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct dm_pool_metadata {int root_lock; int data_sm; } ;
typedef int dm_block_t ;


 int dm_sm_get_count (int ,int ,scalar_t__*) ;
 int down_read (int *) ;
 int up_read (int *) ;

int dm_pool_block_is_used(struct dm_pool_metadata *pmd, dm_block_t b, bool *result)
{
 int r;
 uint32_t ref_count;

 down_read(&pmd->root_lock);
 r = dm_sm_get_count(pmd->data_sm, b, &ref_count);
 if (!r)
  *result = (ref_count != 0);
 up_read(&pmd->root_lock);

 return r;
}
