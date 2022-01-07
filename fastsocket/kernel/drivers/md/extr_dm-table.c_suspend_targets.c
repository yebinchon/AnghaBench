
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {TYPE_1__* type; } ;
struct dm_table {int num_targets; struct dm_target* targets; } ;
struct TYPE_2__ {int (* presuspend ) (struct dm_target*) ;int (* postsuspend ) (struct dm_target*) ;} ;


 int stub1 (struct dm_target*) ;
 int stub2 (struct dm_target*) ;

__attribute__((used)) static void suspend_targets(struct dm_table *t, unsigned postsuspend)
{
 int i = t->num_targets;
 struct dm_target *ti = t->targets;

 while (i--) {
  if (postsuspend) {
   if (ti->type->postsuspend)
    ti->type->postsuspend(ti);
  } else if (ti->type->presuspend)
   ti->type->presuspend(ti);

  ti++;
 }
}
