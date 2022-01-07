
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_disk {unsigned int nr_blocks; unsigned int (* max_entries ) (struct ll_disk*) ;int (* save_ie ) (struct ll_disk*,unsigned int,struct disk_index_entry*) ;int entries_per_block; int tm; } ;
struct dm_block {int dummy; } ;
struct disk_index_entry {scalar_t__ none_free_before; int nr_free; int blocknr; } ;
typedef unsigned int dm_block_t ;


 int DMERR (char*) ;
 int EINVAL ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int dm_block_location (struct dm_block*) ;
 unsigned int dm_sector_div_up (unsigned int,int ) ;
 int dm_sm_bitmap_validator ;
 int dm_tm_new_block (int ,int *,struct dm_block**) ;
 int dm_tm_unlock (int ,struct dm_block*) ;
 unsigned int stub1 (struct ll_disk*) ;
 int stub2 (struct ll_disk*,unsigned int,struct disk_index_entry*) ;

int sm_ll_extend(struct ll_disk *ll, dm_block_t extra_blocks)
{
 int r;
 dm_block_t i, nr_blocks, nr_indexes;
 unsigned old_blocks, blocks;

 nr_blocks = ll->nr_blocks + extra_blocks;
 old_blocks = dm_sector_div_up(ll->nr_blocks, ll->entries_per_block);
 blocks = dm_sector_div_up(nr_blocks, ll->entries_per_block);

 nr_indexes = dm_sector_div_up(nr_blocks, ll->entries_per_block);
 if (nr_indexes > ll->max_entries(ll)) {
  DMERR("space map too large");
  return -EINVAL;
 }




 ll->nr_blocks = nr_blocks;
 for (i = old_blocks; i < blocks; i++) {
  struct dm_block *b;
  struct disk_index_entry idx;

  r = dm_tm_new_block(ll->tm, &dm_sm_bitmap_validator, &b);
  if (r < 0)
   return r;

  idx.blocknr = cpu_to_le64(dm_block_location(b));

  r = dm_tm_unlock(ll->tm, b);
  if (r < 0)
   return r;

  idx.nr_free = cpu_to_le32(ll->entries_per_block);
  idx.none_free_before = 0;

  r = ll->save_ie(ll, i, &idx);
  if (r < 0)
   return r;
 }

 return 0;
}
