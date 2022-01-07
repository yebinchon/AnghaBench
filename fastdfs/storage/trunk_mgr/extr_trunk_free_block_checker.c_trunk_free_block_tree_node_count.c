
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avl_tree_count (int *) ;
 int tree_info_by_id ;

int trunk_free_block_tree_node_count()
{
 return avl_tree_count(&tree_info_by_id);
}
