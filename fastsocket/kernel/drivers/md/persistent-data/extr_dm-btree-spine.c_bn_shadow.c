
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_btree_value_type {int dummy; } ;
struct dm_btree_info {int tm; } ;
struct dm_block {int dummy; } ;
typedef int dm_block_t ;


 int btree_node_validator ;
 int dm_block_data (struct dm_block*) ;
 int dm_tm_shadow_block (int ,int ,int *,struct dm_block**,int*) ;
 int inc_children (int ,int ,struct dm_btree_value_type*) ;

__attribute__((used)) static int bn_shadow(struct dm_btree_info *info, dm_block_t orig,
       struct dm_btree_value_type *vt,
       struct dm_block **result)
{
 int r, inc;

 r = dm_tm_shadow_block(info->tm, orig, &btree_node_validator,
          result, &inc);
 if (!r && inc)
  inc_children(info->tm, dm_block_data(*result), vt);

 return r;
}
