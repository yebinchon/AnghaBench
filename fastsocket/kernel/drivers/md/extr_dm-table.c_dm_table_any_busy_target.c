
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {TYPE_1__* type; } ;
struct dm_table {unsigned int num_targets; struct dm_target* targets; } ;
struct TYPE_2__ {scalar_t__ (* busy ) (struct dm_target*) ;} ;


 scalar_t__ stub1 (struct dm_target*) ;

int dm_table_any_busy_target(struct dm_table *t)
{
 unsigned i;
 struct dm_target *ti;

 for (i = 0; i < t->num_targets; i++) {
  ti = t->targets + i;
  if (ti->type->busy && ti->type->busy(ti))
   return 1;
 }

 return 0;
}
