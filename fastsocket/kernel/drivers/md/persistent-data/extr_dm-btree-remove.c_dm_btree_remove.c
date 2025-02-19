
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct shadow_spine {int dummy; } ;
struct TYPE_5__ {int context; int (* dec ) (int ,int ) ;} ;
struct dm_btree_info {int levels; TYPE_2__ value_type; } ;
struct TYPE_4__ {int nr_entries; } ;
struct btree_node {TYPE_1__ header; } ;
typedef int dm_block_t ;


 int BUG_ON (int) ;
 int delete_at (struct btree_node*,int) ;
 struct btree_node* dm_block_data (int ) ;
 int exit_shadow_spine (struct shadow_spine*) ;
 int init_shadow_spine (struct shadow_spine*,struct dm_btree_info*) ;
 int le32_to_cpu (int ) ;
 TYPE_2__ le64_type ;
 int remove_raw (struct shadow_spine*,struct dm_btree_info*,TYPE_2__*,int ,int ,unsigned int*) ;
 int shadow_current (struct shadow_spine*) ;
 int shadow_root (struct shadow_spine*) ;
 int stub1 (int ,int ) ;
 int value64 (struct btree_node*,int) ;
 int value_ptr (struct btree_node*,int) ;

int dm_btree_remove(struct dm_btree_info *info, dm_block_t root,
      uint64_t *keys, dm_block_t *new_root)
{
 unsigned level, last_level = info->levels - 1;
 int index = 0, r = 0;
 struct shadow_spine spine;
 struct btree_node *n;

 init_shadow_spine(&spine, info);
 for (level = 0; level < info->levels; level++) {
  r = remove_raw(&spine, info,
          (level == last_level ?
    &info->value_type : &le64_type),
          root, keys[level], (unsigned *)&index);
  if (r < 0)
   break;

  n = dm_block_data(shadow_current(&spine));
  if (level != last_level) {
   root = value64(n, index);
   continue;
  }

  BUG_ON(index < 0 || index >= le32_to_cpu(n->header.nr_entries));

  if (info->value_type.dec)
   info->value_type.dec(info->value_type.context,
          value_ptr(n, index));

  delete_at(n, index);
 }

 *new_root = shadow_root(&spine);
 exit_shadow_spine(&spine);

 return r;
}
