
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_disk_superblock {int held_root; } ;
struct dm_pool_metadata {int bm; } ;
struct dm_block {int dummy; } ;
typedef int dm_block_t ;


 int THIN_SUPERBLOCK_LOCATION ;
 struct thin_disk_superblock* dm_block_data (struct dm_block*) ;
 int dm_bm_read_lock (int ,int ,int *,struct dm_block**) ;
 int dm_bm_unlock (struct dm_block*) ;
 int le64_to_cpu (int ) ;
 int sb_validator ;

__attribute__((used)) static int __get_metadata_snap(struct dm_pool_metadata *pmd,
          dm_block_t *result)
{
 int r;
 struct thin_disk_superblock *disk_super;
 struct dm_block *sblock;

 r = dm_bm_read_lock(pmd->bm, THIN_SUPERBLOCK_LOCATION,
       &sb_validator, &sblock);
 if (r)
  return r;

 disk_super = dm_block_data(sblock);
 *result = le64_to_cpu(disk_super->held_root);

 return dm_bm_unlock(sblock);
}
