
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_disk_superblock {int data_block_size; int flags; int trans_id; int device_details_root; int data_mapping_root; int time; } ;
struct dm_pool_metadata {void* data_block_size; void* flags; void* trans_id; void* details_root; void* root; void* time; int bm; } ;
struct dm_block {int dummy; } ;


 int THIN_SUPERBLOCK_LOCATION ;
 struct thin_disk_superblock* dm_block_data (struct dm_block*) ;
 int dm_bm_read_lock (int ,int ,int *,struct dm_block**) ;
 int dm_bm_unlock (struct dm_block*) ;
 void* le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 int sb_validator ;

__attribute__((used)) static int __begin_transaction(struct dm_pool_metadata *pmd)
{
 int r;
 struct thin_disk_superblock *disk_super;
 struct dm_block *sblock;





 r = dm_bm_read_lock(pmd->bm, THIN_SUPERBLOCK_LOCATION,
       &sb_validator, &sblock);
 if (r)
  return r;

 disk_super = dm_block_data(sblock);
 pmd->time = le32_to_cpu(disk_super->time);
 pmd->root = le64_to_cpu(disk_super->data_mapping_root);
 pmd->details_root = le64_to_cpu(disk_super->device_details_root);
 pmd->trans_id = le64_to_cpu(disk_super->trans_id);
 pmd->flags = le32_to_cpu(disk_super->flags);
 pmd->data_block_size = le32_to_cpu(disk_super->data_block_size);

 dm_bm_unlock(sblock);
 return 0;
}
