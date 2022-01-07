
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int dummy; } ;
struct dm_table {unsigned int depth; struct dm_target* targets; } ;
typedef scalar_t__ sector_t ;


 unsigned int KEYS_PER_NODE ;
 unsigned int get_child (unsigned int,unsigned int) ;
 scalar_t__* get_node (struct dm_table*,unsigned int,unsigned int) ;

struct dm_target *dm_table_find_target(struct dm_table *t, sector_t sector)
{
 unsigned int l, n = 0, k = 0;
 sector_t *node;

 for (l = 0; l < t->depth; l++) {
  n = get_child(n, k);
  node = get_node(t, l, n);

  for (k = 0; k < KEYS_PER_NODE; k++)
   if (node[k] >= sector)
    break;
 }

 return &t->targets[(KEYS_PER_NODE * n) + k];
}
