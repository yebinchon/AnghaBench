
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_disk_superblock {int flags; } ;
struct dm_pool_metadata {int root_lock; int flags; } ;
struct dm_block {int dummy; } ;


 int DMERR (char*) ;
 int THIN_METADATA_NEEDS_CHECK_FLAG ;
 int cpu_to_le32 (int ) ;
 struct thin_disk_superblock* dm_block_data (struct dm_block*) ;
 int dm_bm_unlock (struct dm_block*) ;
 int down_write (int *) ;
 int superblock_lock (struct dm_pool_metadata*,struct dm_block**) ;
 int up_write (int *) ;

int dm_pool_metadata_set_needs_check(struct dm_pool_metadata *pmd)
{
 int r;
 struct dm_block *sblock;
 struct thin_disk_superblock *disk_super;

 down_write(&pmd->root_lock);
 pmd->flags |= THIN_METADATA_NEEDS_CHECK_FLAG;

 r = superblock_lock(pmd, &sblock);
 if (r) {
  DMERR("couldn't read superblock");
  goto out;
 }

 disk_super = dm_block_data(sblock);
 disk_super->flags = cpu_to_le32(pmd->flags);

 dm_bm_unlock(sblock);
out:
 up_write(&pmd->root_lock);
 return r;
}
