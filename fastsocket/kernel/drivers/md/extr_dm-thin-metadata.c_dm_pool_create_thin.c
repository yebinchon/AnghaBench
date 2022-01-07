
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_pool_metadata {int root_lock; int fail_io; } ;
typedef int dm_thin_id ;


 int EINVAL ;
 int __create_thin (struct dm_pool_metadata*,int ) ;
 int down_write (int *) ;
 int up_write (int *) ;

int dm_pool_create_thin(struct dm_pool_metadata *pmd, dm_thin_id dev)
{
 int r = -EINVAL;

 down_write(&pmd->root_lock);
 if (!pmd->fail_io)
  r = __create_thin(pmd, dev);
 up_write(&pmd->root_lock);

 return r;
}
