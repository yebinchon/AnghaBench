
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int num_targets; scalar_t__* highs; } ;
typedef scalar_t__ sector_t ;



sector_t dm_table_get_size(struct dm_table *t)
{
 return t->num_targets ? (t->highs[t->num_targets - 1] + 1) : 0;
}
