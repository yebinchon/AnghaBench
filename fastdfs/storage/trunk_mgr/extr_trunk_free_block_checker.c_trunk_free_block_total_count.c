
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avl_tree_walk (int *,int ,int*) ;
 int block_tree_count_walk_callback ;
 int tree_info_by_id ;

int trunk_free_block_total_count()
{
 int count;
 count = 0;
 avl_tree_walk(&tree_info_by_id, block_tree_count_walk_callback, &count);
 return count;
}
