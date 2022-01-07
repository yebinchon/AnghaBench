
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dm_transaction_manager {int dummy; } ;
struct dm_block {int dummy; } ;
struct TYPE_2__ {int nr_entries; } ;
struct btree_node {TYPE_1__ header; } ;
typedef int dm_block_t ;


 int btree_node_validator ;
 struct btree_node* dm_block_data (struct dm_block*) ;
 int dm_tm_read_lock (struct dm_transaction_manager*,int ,int *,struct dm_block**) ;
 int dm_tm_unlock (struct dm_transaction_manager*,struct dm_block*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int get_nr_entries(struct dm_transaction_manager *tm,
     dm_block_t b, uint32_t *result)
{
 int r;
 struct dm_block *block;
 struct btree_node *n;

 r = dm_tm_read_lock(tm, b, &btree_node_validator, &block);
 if (r)
  return r;

 n = dm_block_data(block);
 *result = le32_to_cpu(n->header.nr_entries);

 return dm_tm_unlock(tm, block);
}
