
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_pool_metadata {int read_only; int root_lock; int bm; } ;


 int dm_bm_set_read_only (int ) ;
 int down_write (int *) ;
 int up_write (int *) ;

void dm_pool_metadata_read_only(struct dm_pool_metadata *pmd)
{
 down_write(&pmd->root_lock);
 pmd->read_only = 1;
 dm_bm_set_read_only(pmd->bm);
 up_write(&pmd->root_lock);
}
