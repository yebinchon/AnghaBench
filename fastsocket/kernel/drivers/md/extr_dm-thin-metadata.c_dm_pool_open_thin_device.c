
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_thin_device {int dummy; } ;
struct dm_pool_metadata {int root_lock; int fail_io; } ;
typedef int dm_thin_id ;


 int EINVAL ;
 int __open_device (struct dm_pool_metadata*,int ,int ,struct dm_thin_device**) ;
 int down_write (int *) ;
 int up_write (int *) ;

int dm_pool_open_thin_device(struct dm_pool_metadata *pmd, dm_thin_id dev,
        struct dm_thin_device **td)
{
 int r = -EINVAL;

 down_write(&pmd->root_lock);
 if (!pmd->fail_io)
  r = __open_device(pmd, dev, 0, td);
 up_write(&pmd->root_lock);

 return r;
}
