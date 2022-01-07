
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_pool_metadata {int root_lock; int metadata_sm; int fail_io; } ;
typedef int dm_block_t ;


 int EINVAL ;
 int dm_sm_get_nr_blocks (int ,int *) ;
 int down_read (int *) ;
 int up_read (int *) ;

int dm_pool_get_metadata_dev_size(struct dm_pool_metadata *pmd,
      dm_block_t *result)
{
 int r = -EINVAL;

 down_read(&pmd->root_lock);
 if (!pmd->fail_io)
  r = dm_sm_get_nr_blocks(pmd->metadata_sm, result);
 up_read(&pmd->root_lock);

 return r;
}
