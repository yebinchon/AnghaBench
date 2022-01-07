
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_thin_device {struct dm_pool_metadata* pmd; } ;
struct dm_pool_metadata {int root_lock; int fail_io; } ;
typedef int dm_block_t ;


 int EINVAL ;
 int __highest_block (struct dm_thin_device*,int *) ;
 int down_read (int *) ;
 int up_read (int *) ;

int dm_thin_get_highest_mapped_block(struct dm_thin_device *td,
         dm_block_t *result)
{
 int r = -EINVAL;
 struct dm_pool_metadata *pmd = td->pmd;

 down_read(&pmd->root_lock);
 if (!pmd->fail_io)
  r = __highest_block(td, result);
 up_read(&pmd->root_lock);

 return r;
}
