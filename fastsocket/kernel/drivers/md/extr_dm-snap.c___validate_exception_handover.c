
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dm_snapshot {TYPE_3__* ti; TYPE_2__* store; } ;
struct TYPE_6__ {char* error; } ;
struct TYPE_5__ {TYPE_1__* type; } ;
struct TYPE_4__ {int commit_merge; int prepare_merge; } ;


 int EINVAL ;
 int __find_snapshots_sharing_cow (struct dm_snapshot*,struct dm_snapshot**,struct dm_snapshot**,struct dm_snapshot**) ;
 int dm_target_is_snapshot_merge (TYPE_3__*) ;

__attribute__((used)) static int __validate_exception_handover(struct dm_snapshot *snap)
{
 struct dm_snapshot *snap_src = ((void*)0), *snap_dest = ((void*)0);
 struct dm_snapshot *snap_merge = ((void*)0);


 if ((__find_snapshots_sharing_cow(snap, &snap_src, &snap_dest,
       &snap_merge) == 2) ||
     snap_dest) {
  snap->ti->error = "Snapshot cow pairing for exception "
      "table handover failed";
  return -EINVAL;
 }





 if (!snap_src)
  return 0;




 if (!dm_target_is_snapshot_merge(snap->ti))
  return 1;




 if (snap_merge) {
  snap->ti->error = "A snapshot is already merging.";
  return -EINVAL;
 }

 if (!snap_src->store->type->prepare_merge ||
     !snap_src->store->type->commit_merge) {
  snap->ti->error = "Snapshot exception store does not "
      "support snapshot-merge.";
  return -EINVAL;
 }

 return 1;
}
