
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_header {int flags; int csum; int blocknr; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
struct btree_node {struct node_header header; } ;
typedef int __le32 ;


 int BTREE_CSUM_XOR ;
 int BUG_ON (int ) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 struct btree_node* dm_block_data (struct dm_block*) ;
 int dm_block_location (struct dm_block*) ;
 int dm_bm_checksum (int *,size_t,int ) ;
 int node_check (struct dm_block_validator*,struct dm_block*,int) ;

__attribute__((used)) static void node_prepare_for_write(struct dm_block_validator *v,
       struct dm_block *b,
       size_t block_size)
{
 struct btree_node *n = dm_block_data(b);
 struct node_header *h = &n->header;

 h->blocknr = cpu_to_le64(dm_block_location(b));
 h->csum = cpu_to_le32(dm_bm_checksum(&h->flags,
          block_size - sizeof(__le32),
          BTREE_CSUM_XOR));

 BUG_ON(node_check(v, b, 4096));
}
