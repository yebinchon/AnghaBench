
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ro_spine {int count; struct dm_block** nodes; } ;
struct dm_block {int dummy; } ;
struct btree_node {int dummy; } ;


 int BUG_ON (int) ;
 struct btree_node* dm_block_data (struct dm_block*) ;

struct btree_node *ro_node(struct ro_spine *s)
{
 struct dm_block *block;

 BUG_ON(!s->count);
 block = s->nodes[s->count - 1];

 return dm_block_data(block);
}
