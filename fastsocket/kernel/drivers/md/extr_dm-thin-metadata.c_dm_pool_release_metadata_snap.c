
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_pool_metadata {int root_lock; int fail_io; } ;


 int EINVAL ;
 int __release_metadata_snap (struct dm_pool_metadata*) ;
 int down_write (int *) ;
 int up_write (int *) ;

int dm_pool_release_metadata_snap(struct dm_pool_metadata *pmd)
{
 int r = -EINVAL;

 down_write(&pmd->root_lock);
 if (!pmd->fail_io)
  r = __release_metadata_snap(pmd);
 up_write(&pmd->root_lock);

 return r;
}
