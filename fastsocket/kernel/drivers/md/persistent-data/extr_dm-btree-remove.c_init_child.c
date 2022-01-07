
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_btree_value_type {int dummy; } ;
struct dm_btree_info {int tm; } ;
struct child {unsigned int index; int block; int n; } ;
struct btree_node {int dummy; } ;
typedef int dm_block_t ;
typedef int __le64 ;


 int btree_node_validator ;
 int cpu_to_le64 (int ) ;
 int dm_block_data (int ) ;
 int dm_block_location (int ) ;
 int dm_tm_shadow_block (int ,int ,int *,int *,int*) ;
 int inc_children (int ,int ,struct dm_btree_value_type*) ;
 int value64 (struct btree_node*,unsigned int) ;
 scalar_t__ value_ptr (struct btree_node*,unsigned int) ;

__attribute__((used)) static int init_child(struct dm_btree_info *info, struct dm_btree_value_type *vt,
        struct btree_node *parent,
        unsigned index, struct child *result)
{
 int r, inc;
 dm_block_t root;

 result->index = index;
 root = value64(parent, index);

 r = dm_tm_shadow_block(info->tm, root, &btree_node_validator,
          &result->block, &inc);
 if (r)
  return r;

 result->n = dm_block_data(result->block);

 if (inc)
  inc_children(info->tm, result->n, vt);

 *((__le64 *) value_ptr(parent, index)) =
  cpu_to_le64(dm_block_location(result->block));

 return 0;
}
