
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int pmd; } ;


 int EINVAL ;
 scalar_t__ PM_WRITE ;
 int dm_pool_commit_metadata (int ) ;
 scalar_t__ get_pool_mode (struct pool*) ;
 int metadata_operation_failed (struct pool*,char*,int) ;

__attribute__((used)) static int commit(struct pool *pool)
{
 int r;

 if (get_pool_mode(pool) != PM_WRITE)
  return -EINVAL;

 r = dm_pool_commit_metadata(pool->pmd);
 if (r)
  metadata_operation_failed(pool, "dm_pool_commit_metadata", r);

 return r;
}
