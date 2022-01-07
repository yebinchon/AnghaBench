
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mirror_set {int leg_failure; int trigger_event; int in_sync; } ;
struct mirror {TYPE_1__* dev; int error_type; int error_count; struct mirror_set* ms; } ;
typedef enum dm_raid1_error { ____Placeholder_dm_raid1_error } dm_raid1_error ;
struct TYPE_2__ {int name; } ;


 int DMERR (char*,int ) ;
 int DMWARN (char*) ;
 int atomic_inc (int *) ;
 int errors_handled (struct mirror_set*) ;
 struct mirror* get_default_mirror (struct mirror_set*) ;
 struct mirror* get_valid_mirror (struct mirror_set*) ;
 int schedule_work (int *) ;
 int set_default_mirror (struct mirror*) ;
 scalar_t__ test_and_set_bit (int,int *) ;

__attribute__((used)) static void fail_mirror(struct mirror *m, enum dm_raid1_error error_type)
{
 struct mirror_set *ms = m->ms;
 struct mirror *new;

 ms->leg_failure = 1;






 atomic_inc(&m->error_count);

 if (test_and_set_bit(error_type, &m->error_type))
  return;

 if (!errors_handled(ms))
  return;

 if (m != get_default_mirror(ms))
  goto out;

 if (!ms->in_sync) {




  DMERR("Primary mirror (%s) failed while out-of-sync: "
        "Reads may fail.", m->dev->name);
  goto out;
 }

 new = get_valid_mirror(ms);
 if (new)
  set_default_mirror(new);
 else
  DMWARN("All sides of mirror have failed.");

out:
 schedule_work(&ms->trigger_event);
}
