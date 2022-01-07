
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_disk {int tm; int bitmap_root; int mi_le; } ;
struct dm_block {int dummy; } ;


 int dm_block_data (struct dm_block*) ;
 int dm_block_location (struct dm_block*) ;
 int dm_tm_new_block (int ,int *,struct dm_block**) ;
 int dm_tm_unlock (int ,struct dm_block*) ;
 int index_validator ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int metadata_ll_init_index(struct ll_disk *ll)
{
 int r;
 struct dm_block *b;

 r = dm_tm_new_block(ll->tm, &index_validator, &b);
 if (r < 0)
  return r;

 memcpy(dm_block_data(b), &ll->mi_le, sizeof(ll->mi_le));
 ll->bitmap_root = dm_block_location(b);

 return dm_tm_unlock(ll->tm, b);
}
