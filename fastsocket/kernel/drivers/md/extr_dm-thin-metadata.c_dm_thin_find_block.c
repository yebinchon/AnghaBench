
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct dm_thin_lookup_result {int shared; int block; } ;
struct dm_thin_device {int id; struct dm_pool_metadata* pmd; } ;
struct dm_btree_info {int dummy; } ;
struct dm_pool_metadata {int root_lock; int root; scalar_t__ fail_io; struct dm_btree_info nb_info; struct dm_btree_info info; } ;
typedef int dm_block_t ;
typedef int __le64 ;


 int EINVAL ;
 int EWOULDBLOCK ;
 int __snapshotted_since (struct dm_thin_device*,int ) ;
 int dm_btree_lookup (struct dm_btree_info*,int ,int *,int *) ;
 int down_read (int *) ;
 scalar_t__ down_read_trylock (int *) ;
 int le64_to_cpu (int ) ;
 int unpack_block_time (int ,int *,int *) ;
 int up_read (int *) ;

int dm_thin_find_block(struct dm_thin_device *td, dm_block_t block,
         int can_block, struct dm_thin_lookup_result *result)
{
 int r = -EINVAL;
 uint64_t block_time = 0;
 __le64 value;
 struct dm_pool_metadata *pmd = td->pmd;
 dm_block_t keys[2] = { td->id, block };
 struct dm_btree_info *info;

 if (can_block) {
  down_read(&pmd->root_lock);
  info = &pmd->info;
 } else if (down_read_trylock(&pmd->root_lock))
  info = &pmd->nb_info;
 else
  return -EWOULDBLOCK;

 if (pmd->fail_io)
  goto out;

 r = dm_btree_lookup(info, pmd->root, keys, &value);
 if (!r)
  block_time = le64_to_cpu(value);

out:
 up_read(&pmd->root_lock);

 if (!r) {
  dm_block_t exception_block;
  uint32_t exception_time;
  unpack_block_time(block_time, &exception_block,
      &exception_time);
  result->block = exception_block;
  result->shared = __snapshotted_since(td, exception_time);
 }

 return r;
}
