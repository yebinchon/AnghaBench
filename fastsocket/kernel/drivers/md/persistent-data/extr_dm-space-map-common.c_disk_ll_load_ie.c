
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_disk {int bitmap_root; int bitmap_info; } ;
struct disk_index_entry {int dummy; } ;
typedef int dm_block_t ;


 int dm_btree_lookup (int *,int ,int *,struct disk_index_entry*) ;

__attribute__((used)) static int disk_ll_load_ie(struct ll_disk *ll, dm_block_t index,
      struct disk_index_entry *ie)
{
 return dm_btree_lookup(&ll->bitmap_info, ll->bitmap_root, &index, ie);
}
