
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int depth; unsigned int* counts; int ** index; } ;
typedef int sector_t ;


 int CHILDREN_PER_NODE ;
 int ENOMEM ;
 int KEYS_PER_NODE ;
 scalar_t__ NODE_SIZE ;
 unsigned int dm_div_up (unsigned int,int ) ;
 scalar_t__ dm_vcalloc (unsigned int,unsigned long) ;
 int setup_btree_index (int,struct dm_table*) ;

__attribute__((used)) static int setup_indexes(struct dm_table *t)
{
 int i;
 unsigned int total = 0;
 sector_t *indexes;


 for (i = t->depth - 2; i >= 0; i--) {
  t->counts[i] = dm_div_up(t->counts[i + 1], CHILDREN_PER_NODE);
  total += t->counts[i];
 }

 indexes = (sector_t *) dm_vcalloc(total, (unsigned long) NODE_SIZE);
 if (!indexes)
  return -ENOMEM;


 for (i = t->depth - 2; i >= 0; i--) {
  t->index[i] = indexes;
  indexes += (KEYS_PER_NODE * t->counts[i]);
  setup_btree_index(i, t);
 }

 return 0;
}
