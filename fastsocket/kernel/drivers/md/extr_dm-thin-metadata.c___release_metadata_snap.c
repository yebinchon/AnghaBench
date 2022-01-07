
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_disk_superblock {int device_details_root; int data_mapping_root; int held_root; } ;
struct dm_pool_metadata {int tm; int metadata_sm; } ;
struct dm_block {int dummy; } ;
typedef int dm_block_t ;


 int DMWARN (char*) ;
 int EINVAL ;
 int cpu_to_le64 (int ) ;
 struct thin_disk_superblock* dm_block_data (struct dm_block*) ;
 int dm_bm_unlock (struct dm_block*) ;
 int dm_sm_dec_block (int ,int ) ;
 int dm_tm_read_lock (int ,int ,int *,struct dm_block**) ;
 int dm_tm_unlock (int ,struct dm_block*) ;
 int le64_to_cpu (int ) ;
 int sb_validator ;
 int superblock_lock (struct dm_pool_metadata*,struct dm_block**) ;

__attribute__((used)) static int __release_metadata_snap(struct dm_pool_metadata *pmd)
{
 int r;
 struct thin_disk_superblock *disk_super;
 struct dm_block *sblock, *copy;
 dm_block_t held_root;

 r = superblock_lock(pmd, &sblock);
 if (r)
  return r;

 disk_super = dm_block_data(sblock);
 held_root = le64_to_cpu(disk_super->held_root);
 disk_super->held_root = cpu_to_le64(0);

 dm_bm_unlock(sblock);

 if (!held_root) {
  DMWARN("No pool metadata snapshot found: nothing to release.");
  return -EINVAL;
 }

 r = dm_tm_read_lock(pmd->tm, held_root, &sb_validator, &copy);
 if (r)
  return r;

 disk_super = dm_block_data(copy);
 dm_sm_dec_block(pmd->metadata_sm, le64_to_cpu(disk_super->data_mapping_root));
 dm_sm_dec_block(pmd->metadata_sm, le64_to_cpu(disk_super->device_details_root));
 dm_sm_dec_block(pmd->metadata_sm, held_root);

 return dm_tm_unlock(pmd->tm, copy);
}
