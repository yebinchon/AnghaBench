
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {TYPE_1__* type; } ;
struct dm_table {int num_targets; struct dm_target* targets; int md; } ;
struct TYPE_2__ {int (* preresume ) (struct dm_target*) ;int (* resume ) (struct dm_target*) ;int name; } ;


 int DMERR (char*,int ,int ,int) ;
 int dm_device_name (int ) ;
 int stub1 (struct dm_target*) ;
 int stub2 (struct dm_target*) ;

int dm_table_resume_targets(struct dm_table *t)
{
 int i, r = 0;

 for (i = 0; i < t->num_targets; i++) {
  struct dm_target *ti = t->targets + i;

  if (!ti->type->preresume)
   continue;

  r = ti->type->preresume(ti);
  if (r) {
   DMERR("%s: %s: preresume failed, error = %d",
         dm_device_name(t->md), ti->type->name, r);
   return r;
  }
 }

 for (i = 0; i < t->num_targets; i++) {
  struct dm_target *ti = t->targets + i;

  if (ti->type->resume)
   ti->type->resume(ti);
 }

 return 0;
}
