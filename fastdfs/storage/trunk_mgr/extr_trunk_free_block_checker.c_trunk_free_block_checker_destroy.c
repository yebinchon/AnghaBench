
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avl_tree_destroy (int *) ;
 int tree_info_by_id ;

void trunk_free_block_checker_destroy()
{
 avl_tree_destroy(&tree_info_by_id);
}
