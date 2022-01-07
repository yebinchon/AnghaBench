
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct dm_btree_info {int tm; } ;
struct child {int index; int block; struct btree_node* n; } ;
struct TYPE_2__ {int nr_entries; } ;
struct btree_node {int * keys; TYPE_1__ header; } ;


 int cpu_to_le32 (unsigned int) ;
 int delete_at (struct btree_node*,int ) ;
 int dm_block_location (int ) ;
 int dm_tm_dec (int ,int ) ;
 int * key_ptr (struct btree_node*,int ) ;
 unsigned int le32_to_cpu (int ) ;
 int merge_threshold (struct btree_node*) ;
 int node_copy (struct btree_node*,struct btree_node*,unsigned int) ;
 int shift (struct btree_node*,struct btree_node*,unsigned int) ;

__attribute__((used)) static void __rebalance2(struct dm_btree_info *info, struct btree_node *parent,
    struct child *l, struct child *r)
{
 struct btree_node *left = l->n;
 struct btree_node *right = r->n;
 uint32_t nr_left = le32_to_cpu(left->header.nr_entries);
 uint32_t nr_right = le32_to_cpu(right->header.nr_entries);
 unsigned threshold = 2 * merge_threshold(left) + 1;

 if (nr_left + nr_right < threshold) {



  node_copy(left, right, -nr_right);
  left->header.nr_entries = cpu_to_le32(nr_left + nr_right);
  delete_at(parent, r->index);





  dm_tm_dec(info->tm, dm_block_location(r->block));
 } else {



  unsigned target_left = (nr_left + nr_right) / 2;
  shift(left, right, nr_left - target_left);
  *key_ptr(parent, r->index) = right->keys[0];
 }
}
