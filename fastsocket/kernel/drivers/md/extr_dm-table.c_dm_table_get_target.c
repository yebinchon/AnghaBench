
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int dummy; } ;
struct dm_table {unsigned int num_targets; struct dm_target* targets; } ;



struct dm_target *dm_table_get_target(struct dm_table *t, unsigned int index)
{
 if (index >= t->num_targets)
  return ((void*)0);

 return t->targets + index;
}
