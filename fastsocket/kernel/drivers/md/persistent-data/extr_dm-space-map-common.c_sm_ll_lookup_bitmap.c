
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ll_disk {int (* load_ie ) (struct ll_disk*,int ,struct disk_index_entry*) ;int tm; int entries_per_block; } ;
struct dm_block {int dummy; } ;
struct disk_index_entry {int blocknr; } ;
typedef int dm_block_t ;


 int dm_bitmap_data (struct dm_block*) ;
 int dm_sm_bitmap_validator ;
 int dm_tm_read_lock (int ,int ,int *,struct dm_block**) ;
 int dm_tm_unlock (int ,struct dm_block*) ;
 int do_div (int ,int ) ;
 int le64_to_cpu (int ) ;
 int sm_lookup_bitmap (int ,int ) ;
 int stub1 (struct ll_disk*,int ,struct disk_index_entry*) ;

int sm_ll_lookup_bitmap(struct ll_disk *ll, dm_block_t b, uint32_t *result)
{
 int r;
 dm_block_t index = b;
 struct disk_index_entry ie_disk;
 struct dm_block *blk;

 b = do_div(index, ll->entries_per_block);
 r = ll->load_ie(ll, index, &ie_disk);
 if (r < 0)
  return r;

 r = dm_tm_read_lock(ll->tm, le64_to_cpu(ie_disk.blocknr),
       &dm_sm_bitmap_validator, &blk);
 if (r < 0)
  return r;

 *result = sm_lookup_bitmap(dm_bitmap_data(blk), b);

 return dm_tm_unlock(ll->tm, blk);
}
