
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_disk_superblock {int data_space_map_root; int metadata_space_map_root; } ;
struct dm_pool_metadata {int metadata_sm; int tm; int data_sm; int nb_tm; int bm; } ;
struct dm_block {int dummy; } ;


 int DMERR (char*) ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIN_SUPERBLOCK_LOCATION ;
 int __check_incompat_features (struct thin_disk_superblock*,struct dm_pool_metadata*) ;
 int __setup_btree_details (struct dm_pool_metadata*) ;
 struct thin_disk_superblock* dm_block_data (struct dm_block*) ;
 int dm_bm_read_lock (int ,int ,int *,struct dm_block**) ;
 int dm_bm_unlock (struct dm_block*) ;
 int dm_sm_destroy (int ) ;
 int dm_sm_disk_open (int ,int ,int) ;
 int dm_tm_create_non_blocking_clone (int ) ;
 int dm_tm_destroy (int ) ;
 int dm_tm_open_with_sm (int ,int ,int ,int,int *,int *) ;
 int sb_validator ;

__attribute__((used)) static int __open_metadata(struct dm_pool_metadata *pmd)
{
 int r;
 struct dm_block *sblock;
 struct thin_disk_superblock *disk_super;

 r = dm_bm_read_lock(pmd->bm, THIN_SUPERBLOCK_LOCATION,
       &sb_validator, &sblock);
 if (r < 0) {
  DMERR("couldn't read superblock");
  return r;
 }

 disk_super = dm_block_data(sblock);

 r = __check_incompat_features(disk_super, pmd);
 if (r < 0)
  goto bad_unlock_sblock;

 r = dm_tm_open_with_sm(pmd->bm, THIN_SUPERBLOCK_LOCATION,
          disk_super->metadata_space_map_root,
          sizeof(disk_super->metadata_space_map_root),
          &pmd->tm, &pmd->metadata_sm);
 if (r < 0) {
  DMERR("tm_open_with_sm failed");
  goto bad_unlock_sblock;
 }

 pmd->data_sm = dm_sm_disk_open(pmd->tm, disk_super->data_space_map_root,
           sizeof(disk_super->data_space_map_root));
 if (IS_ERR(pmd->data_sm)) {
  DMERR("sm_disk_open failed");
  r = PTR_ERR(pmd->data_sm);
  goto bad_cleanup_tm;
 }

 pmd->nb_tm = dm_tm_create_non_blocking_clone(pmd->tm);
 if (!pmd->nb_tm) {
  DMERR("could not create non-blocking clone tm");
  r = -ENOMEM;
  goto bad_cleanup_data_sm;
 }

 __setup_btree_details(pmd);
 return dm_bm_unlock(sblock);

bad_cleanup_data_sm:
 dm_sm_destroy(pmd->data_sm);
bad_cleanup_tm:
 dm_tm_destroy(pmd->tm);
 dm_sm_destroy(pmd->metadata_sm);
bad_unlock_sblock:
 dm_bm_unlock(sblock);

 return r;
}
