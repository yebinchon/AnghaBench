
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool_c {struct pool* pool; } ;
struct pool {int pmd; int pool_md; int md_dev; } ;
struct dm_target {struct pool_c* private; } ;
typedef scalar_t__ dm_block_t ;


 int DMERR (char*,int ,...) ;
 int DMINFO (char*,int ,scalar_t__,scalar_t__) ;
 int EINVAL ;
 int dm_device_name (int ) ;
 int dm_pool_get_metadata_dev_size (int ,scalar_t__*) ;
 scalar_t__ dm_pool_metadata_needs_check (int ) ;
 int dm_pool_resize_metadata_dev (int ,scalar_t__) ;
 scalar_t__ get_metadata_dev_size_in_blocks (int ) ;
 int metadata_operation_failed (struct pool*,char*,int) ;
 int warn_if_metadata_device_too_big (int ) ;

__attribute__((used)) static int maybe_resize_metadata_dev(struct dm_target *ti, bool *need_commit)
{
 int r;
 struct pool_c *pt = ti->private;
 struct pool *pool = pt->pool;
 dm_block_t metadata_dev_size, sb_metadata_dev_size;

 *need_commit = 0;

 metadata_dev_size = get_metadata_dev_size_in_blocks(pool->md_dev);

 r = dm_pool_get_metadata_dev_size(pool->pmd, &sb_metadata_dev_size);
 if (r) {
  DMERR("%s: failed to retrieve metadata device size",
        dm_device_name(pool->pool_md));
  return r;
 }

 if (metadata_dev_size < sb_metadata_dev_size) {
  DMERR("%s: metadata device (%llu blocks) too small: expected %llu",
        dm_device_name(pool->pool_md),
        metadata_dev_size, sb_metadata_dev_size);
  return -EINVAL;

 } else if (metadata_dev_size > sb_metadata_dev_size) {
  if (dm_pool_metadata_needs_check(pool->pmd)) {
   DMERR("%s: unable to grow the metadata device until repaired.",
         dm_device_name(pool->pool_md));
   return 0;
  }

  warn_if_metadata_device_too_big(pool->md_dev);
  DMINFO("%s: growing the metadata device from %llu to %llu blocks",
         dm_device_name(pool->pool_md),
         sb_metadata_dev_size, metadata_dev_size);
  r = dm_pool_resize_metadata_dev(pool->pmd, metadata_dev_size);
  if (r) {
   metadata_operation_failed(pool, "dm_pool_resize_metadata_dev", r);
   return r;
  }

  *need_commit = 1;
 }

 return 0;
}
