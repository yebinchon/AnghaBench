
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_disk_superblock {void* flags; void* trans_id; void* device_details_root; void* data_mapping_root; void* time; } ;
struct dm_pool_metadata {int tm; int flags; int trans_id; int details_root; int root; int time; int data_sm; int metadata_sm; } ;
struct dm_block {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int __write_changed_details (struct dm_pool_metadata*) ;
 int copy_sm_roots (struct dm_pool_metadata*,struct thin_disk_superblock*) ;
 void* cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 struct thin_disk_superblock* dm_block_data (struct dm_block*) ;
 int dm_sm_commit (int ) ;
 int dm_sm_root_size (int ,size_t*) ;
 int dm_tm_commit (int ,struct dm_block*) ;
 int dm_tm_pre_commit (int ) ;
 int save_sm_roots (struct dm_pool_metadata*) ;
 int superblock_lock (struct dm_pool_metadata*,struct dm_block**) ;

__attribute__((used)) static int __commit_transaction(struct dm_pool_metadata *pmd)
{
 int r;
 size_t metadata_len, data_len;
 struct thin_disk_superblock *disk_super;
 struct dm_block *sblock;




 BUILD_BUG_ON(sizeof(struct thin_disk_superblock) > 512);

 r = __write_changed_details(pmd);
 if (r < 0)
  return r;

 r = dm_sm_commit(pmd->data_sm);
 if (r < 0)
  return r;

 r = dm_tm_pre_commit(pmd->tm);
 if (r < 0)
  return r;

 r = dm_sm_root_size(pmd->metadata_sm, &metadata_len);
 if (r < 0)
  return r;

 r = dm_sm_root_size(pmd->data_sm, &data_len);
 if (r < 0)
  return r;

 r = save_sm_roots(pmd);
 if (r < 0)
  return r;

 r = superblock_lock(pmd, &sblock);
 if (r)
  return r;

 disk_super = dm_block_data(sblock);
 disk_super->time = cpu_to_le32(pmd->time);
 disk_super->data_mapping_root = cpu_to_le64(pmd->root);
 disk_super->device_details_root = cpu_to_le64(pmd->details_root);
 disk_super->trans_id = cpu_to_le64(pmd->trans_id);
 disk_super->flags = cpu_to_le32(pmd->flags);

 copy_sm_roots(pmd, disk_super);

 return dm_tm_commit(pmd->tm, sblock);
}
