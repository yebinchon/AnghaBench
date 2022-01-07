
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int size; } ;
struct dm_btree_info {TYPE_2__ value_type; int tm; } ;
struct dm_block {int dummy; } ;
struct TYPE_3__ {void* value_size; void* max_entries; void* nr_entries; void* flags; } ;
struct btree_node {TYPE_1__ header; } ;
typedef int dm_block_t ;


 int LEAF_NODE ;
 int calc_max_entries (int ,size_t) ;
 void* cpu_to_le32 (int ) ;
 struct btree_node* dm_block_data (struct dm_block*) ;
 int dm_block_location (struct dm_block*) ;
 size_t dm_bm_block_size (int ) ;
 int dm_tm_get_bm (int ) ;
 int memset (struct btree_node*,int ,size_t) ;
 int new_block (struct dm_btree_info*,struct dm_block**) ;
 int unlock_block (struct dm_btree_info*,struct dm_block*) ;

int dm_btree_empty(struct dm_btree_info *info, dm_block_t *root)
{
 int r;
 struct dm_block *b;
 struct btree_node *n;
 size_t block_size;
 uint32_t max_entries;

 r = new_block(info, &b);
 if (r < 0)
  return r;

 block_size = dm_bm_block_size(dm_tm_get_bm(info->tm));
 max_entries = calc_max_entries(info->value_type.size, block_size);

 n = dm_block_data(b);
 memset(n, 0, block_size);
 n->header.flags = cpu_to_le32(LEAF_NODE);
 n->header.nr_entries = cpu_to_le32(0);
 n->header.max_entries = cpu_to_le32(max_entries);
 n->header.value_size = cpu_to_le32(info->value_type.size);

 *root = dm_block_location(b);
 return unlock_block(info, b);
}
