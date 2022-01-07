
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_disk_superblock {int data_space_map_root; int metadata_space_map_root; } ;
struct dm_pool_metadata {int data_space_map_root; int metadata_space_map_root; } ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void copy_sm_roots(struct dm_pool_metadata *pmd,
     struct thin_disk_superblock *disk)
{
 memcpy(&disk->metadata_space_map_root,
        &pmd->metadata_space_map_root,
        sizeof(pmd->metadata_space_map_root));

 memcpy(&disk->data_space_map_root,
        &pmd->data_space_map_root,
        sizeof(pmd->data_space_map_root));
}
