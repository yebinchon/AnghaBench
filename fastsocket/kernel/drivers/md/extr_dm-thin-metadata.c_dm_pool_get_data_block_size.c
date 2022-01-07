
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_pool_metadata {int root_lock; int data_block_size; } ;
typedef int sector_t ;


 int down_read (int *) ;
 int up_read (int *) ;

int dm_pool_get_data_block_size(struct dm_pool_metadata *pmd, sector_t *result)
{
 down_read(&pmd->root_lock);
 *result = pmd->data_block_size;
 up_read(&pmd->root_lock);

 return 0;
}
