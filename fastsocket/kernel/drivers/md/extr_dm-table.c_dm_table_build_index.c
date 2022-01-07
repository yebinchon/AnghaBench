
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int depth; unsigned int* counts; int highs; int * index; int num_targets; } ;


 int CHILDREN_PER_NODE ;
 int KEYS_PER_NODE ;
 unsigned int dm_div_up (int ,int ) ;
 int int_log (unsigned int,int ) ;
 int setup_indexes (struct dm_table*) ;

__attribute__((used)) static int dm_table_build_index(struct dm_table *t)
{
 int r = 0;
 unsigned int leaf_nodes;


 leaf_nodes = dm_div_up(t->num_targets, KEYS_PER_NODE);
 t->depth = 1 + int_log(leaf_nodes, CHILDREN_PER_NODE);


 t->counts[t->depth - 1] = leaf_nodes;
 t->index[t->depth - 1] = t->highs;

 if (t->depth >= 2)
  r = setup_indexes(t);

 return r;
}
