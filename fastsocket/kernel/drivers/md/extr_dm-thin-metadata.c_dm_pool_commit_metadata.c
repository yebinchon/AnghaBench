
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_pool_metadata {int root_lock; scalar_t__ fail_io; } ;


 int EINVAL ;
 int __begin_transaction (struct dm_pool_metadata*) ;
 int __commit_transaction (struct dm_pool_metadata*) ;
 int down_write (int *) ;
 int up_write (int *) ;

int dm_pool_commit_metadata(struct dm_pool_metadata *pmd)
{
 int r = -EINVAL;

 down_write(&pmd->root_lock);
 if (pmd->fail_io)
  goto out;

 r = __commit_transaction(pmd);
 if (r <= 0)
  goto out;




 r = __begin_transaction(pmd);
out:
 up_write(&pmd->root_lock);
 return r;
}
