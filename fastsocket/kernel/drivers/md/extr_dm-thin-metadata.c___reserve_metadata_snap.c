
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_disk_superblock {int held_root; int device_details_root; int data_mapping_root; int metadata_space_map_root; int data_space_map_root; } ;
struct dm_pool_metadata {int tm; int metadata_sm; } ;
struct dm_block {int dummy; } ;
typedef int dm_block_t ;


 int BUG_ON (int) ;
 int DMWARN (char*) ;
 int EBUSY ;
 int THIN_SUPERBLOCK_LOCATION ;
 int cpu_to_le64 (int ) ;
 struct thin_disk_superblock* dm_block_data (struct dm_block*) ;
 int dm_block_location (struct dm_block*) ;
 int dm_bm_unlock (struct dm_block*) ;
 int dm_sm_inc_block (int ,int ) ;
 int dm_tm_dec (int ,int ) ;
 int dm_tm_inc (int ,scalar_t__) ;
 int dm_tm_shadow_block (int ,int ,int *,struct dm_block**,int*) ;
 int dm_tm_unlock (int ,struct dm_block*) ;
 scalar_t__ le64_to_cpu (int ) ;
 int memset (int *,int ,int) ;
 int sb_validator ;
 int superblock_lock (struct dm_pool_metadata*,struct dm_block**) ;

__attribute__((used)) static int __reserve_metadata_snap(struct dm_pool_metadata *pmd)
{
 int r, inc;
 struct thin_disk_superblock *disk_super;
 struct dm_block *copy, *sblock;
 dm_block_t held_root;




 dm_sm_inc_block(pmd->metadata_sm, THIN_SUPERBLOCK_LOCATION);
 r = dm_tm_shadow_block(pmd->tm, THIN_SUPERBLOCK_LOCATION,
          &sb_validator, &copy, &inc);
 if (r)
  return r;

 BUG_ON(!inc);

 held_root = dm_block_location(copy);
 disk_super = dm_block_data(copy);

 if (le64_to_cpu(disk_super->held_root)) {
  DMWARN("Pool metadata snapshot already exists: release this before taking another.");

  dm_tm_dec(pmd->tm, held_root);
  dm_tm_unlock(pmd->tm, copy);
  return -EBUSY;
 }




 memset(&disk_super->data_space_map_root, 0,
        sizeof(disk_super->data_space_map_root));
 memset(&disk_super->metadata_space_map_root, 0,
        sizeof(disk_super->metadata_space_map_root));




 dm_tm_inc(pmd->tm, le64_to_cpu(disk_super->data_mapping_root));
 dm_tm_inc(pmd->tm, le64_to_cpu(disk_super->device_details_root));
 dm_tm_unlock(pmd->tm, copy);




 r = superblock_lock(pmd, &sblock);
 if (r) {
  dm_tm_dec(pmd->tm, held_root);
  return r;
 }

 disk_super = dm_block_data(sblock);
 disk_super->held_root = cpu_to_le64(held_root);
 dm_bm_unlock(sblock);
 return 0;
}
