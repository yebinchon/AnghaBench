
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_pool_metadata {int bm; int tm; int nb_tm; int metadata_sm; int data_sm; } ;


 int dm_block_manager_destroy (int ) ;
 int dm_sm_destroy (int ) ;
 int dm_tm_destroy (int ) ;

__attribute__((used)) static void __destroy_persistent_data_objects(struct dm_pool_metadata *pmd)
{
 dm_sm_destroy(pmd->data_sm);
 dm_sm_destroy(pmd->metadata_sm);
 dm_tm_destroy(pmd->nb_tm);
 dm_tm_destroy(pmd->tm);
 dm_block_manager_destroy(pmd->bm);
}
