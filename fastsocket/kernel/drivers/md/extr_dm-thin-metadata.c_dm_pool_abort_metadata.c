
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_pool_metadata {int fail_io; int root_lock; } ;


 int EINVAL ;
 int __create_persistent_data_objects (struct dm_pool_metadata*,int) ;
 int __destroy_persistent_data_objects (struct dm_pool_metadata*) ;
 int __set_abort_with_changes_flags (struct dm_pool_metadata*) ;
 int down_write (int *) ;
 int up_write (int *) ;

int dm_pool_abort_metadata(struct dm_pool_metadata *pmd)
{
 int r = -EINVAL;

 down_write(&pmd->root_lock);
 if (pmd->fail_io)
  goto out;

 __set_abort_with_changes_flags(pmd);
 __destroy_persistent_data_objects(pmd);
 r = __create_persistent_data_objects(pmd, 0);
 if (r)
  pmd->fail_io = 1;

out:
 up_write(&pmd->root_lock);

 return r;
}
