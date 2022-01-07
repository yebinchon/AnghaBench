
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_pool_metadata {int root_lock; int fail_io; } ;
typedef int dm_block_t ;


 int EINVAL ;
 int __get_metadata_snap (struct dm_pool_metadata*,int *) ;
 int down_read (int *) ;
 int up_read (int *) ;

int dm_pool_get_metadata_snap(struct dm_pool_metadata *pmd,
         dm_block_t *result)
{
 int r = -EINVAL;

 down_read(&pmd->root_lock);
 if (!pmd->fail_io)
  r = __get_metadata_snap(pmd, result);
 up_read(&pmd->root_lock);

 return r;
}
