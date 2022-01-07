
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_pool_metadata {int root_lock; int data_sm; int fail_io; } ;
typedef int dm_block_t ;


 int EINVAL ;
 int dm_sm_new_block (int ,int *) ;
 int down_write (int *) ;
 int up_write (int *) ;

int dm_pool_alloc_data_block(struct dm_pool_metadata *pmd, dm_block_t *result)
{
 int r = -EINVAL;

 down_write(&pmd->root_lock);
 if (!pmd->fail_io)
  r = dm_sm_new_block(pmd->data_sm, result);
 up_write(&pmd->root_lock);

 return r;
}
