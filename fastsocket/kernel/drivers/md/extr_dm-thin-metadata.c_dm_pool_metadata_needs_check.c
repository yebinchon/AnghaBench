
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_pool_metadata {int flags; int root_lock; } ;


 int THIN_METADATA_NEEDS_CHECK_FLAG ;
 int down_read (int *) ;
 int up_read (int *) ;

bool dm_pool_metadata_needs_check(struct dm_pool_metadata *pmd)
{
 bool needs_check;

 down_read(&pmd->root_lock);
 needs_check = pmd->flags & THIN_METADATA_NEEDS_CHECK_FLAG;
 up_read(&pmd->root_lock);

 return needs_check;
}
