
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {scalar_t__ begin; scalar_t__ len; } ;
struct dm_table {int num_targets; struct dm_target* targets; } ;



__attribute__((used)) static int adjoin(struct dm_table *table, struct dm_target *ti)
{
 struct dm_target *prev;

 if (!table->num_targets)
  return !ti->begin;

 prev = &table->targets[table->num_targets - 1];
 return (ti->begin == (prev->begin + prev->len));
}
