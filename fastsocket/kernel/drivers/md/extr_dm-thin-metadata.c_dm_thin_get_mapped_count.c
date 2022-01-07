
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_thin_device {int mapped_blocks; struct dm_pool_metadata* pmd; } ;
struct dm_pool_metadata {int root_lock; int fail_io; } ;
typedef int dm_block_t ;


 int EINVAL ;
 int down_read (int *) ;
 int up_read (int *) ;

int dm_thin_get_mapped_count(struct dm_thin_device *td, dm_block_t *result)
{
 int r = -EINVAL;
 struct dm_pool_metadata *pmd = td->pmd;

 down_read(&pmd->root_lock);
 if (!pmd->fail_io) {
  *result = td->mapped_blocks;
  r = 0;
 }
 up_read(&pmd->root_lock);

 return r;
}
