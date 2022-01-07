
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_pool_metadata {int metadata_sm; int tm; int data_sm; int nb_tm; int details_root; int details_info; int root; int info; int bm; } ;


 int DMERR (char*) ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIN_SUPERBLOCK_LOCATION ;
 int __setup_btree_details (struct dm_pool_metadata*) ;
 int __write_initial_superblock (struct dm_pool_metadata*) ;
 int dm_btree_empty (int *,int *) ;
 int dm_sm_destroy (int ) ;
 int dm_sm_disk_create (int ,int ) ;
 int dm_tm_create_non_blocking_clone (int ) ;
 int dm_tm_create_with_sm (int ,int ,int *,int *) ;
 int dm_tm_destroy (int ) ;

__attribute__((used)) static int __format_metadata(struct dm_pool_metadata *pmd)
{
 int r;

 r = dm_tm_create_with_sm(pmd->bm, THIN_SUPERBLOCK_LOCATION,
     &pmd->tm, &pmd->metadata_sm);
 if (r < 0) {
  DMERR("tm_create_with_sm failed");
  return r;
 }

 pmd->data_sm = dm_sm_disk_create(pmd->tm, 0);
 if (IS_ERR(pmd->data_sm)) {
  DMERR("sm_disk_create failed");
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

 r = dm_btree_empty(&pmd->info, &pmd->root);
 if (r < 0)
  goto bad_cleanup_nb_tm;

 r = dm_btree_empty(&pmd->details_info, &pmd->details_root);
 if (r < 0) {
  DMERR("couldn't create devices root");
  goto bad_cleanup_nb_tm;
 }

 r = __write_initial_superblock(pmd);
 if (r)
  goto bad_cleanup_nb_tm;

 return 0;

bad_cleanup_nb_tm:
 dm_tm_destroy(pmd->nb_tm);
bad_cleanup_data_sm:
 dm_sm_destroy(pmd->data_sm);
bad_cleanup_tm:
 dm_tm_destroy(pmd->tm);
 dm_sm_destroy(pmd->metadata_sm);

 return r;
}
