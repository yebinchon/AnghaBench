
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_pool_metadata {int bm; int bdev; } ;


 int DMERR (char*) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SECTOR_SHIFT ;
 int THIN_MAX_CONCURRENT_LOCKS ;
 int THIN_METADATA_BLOCK_SIZE ;
 int THIN_METADATA_CACHE_SIZE ;
 int __open_or_format_metadata (struct dm_pool_metadata*,int) ;
 int dm_block_manager_create (int ,int,int ,int ) ;
 int dm_block_manager_destroy (int ) ;

__attribute__((used)) static int __create_persistent_data_objects(struct dm_pool_metadata *pmd, bool format_device)
{
 int r;

 pmd->bm = dm_block_manager_create(pmd->bdev, THIN_METADATA_BLOCK_SIZE << SECTOR_SHIFT,
       THIN_METADATA_CACHE_SIZE,
       THIN_MAX_CONCURRENT_LOCKS);
 if (IS_ERR(pmd->bm)) {
  DMERR("could not create block manager");
  return PTR_ERR(pmd->bm);
 }

 r = __open_or_format_metadata(pmd, format_device);
 if (r)
  dm_block_manager_destroy(pmd->bm);

 return r;
}
