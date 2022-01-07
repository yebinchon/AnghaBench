
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_snapshot {TYPE_2__* store; } ;
struct dm_snap_pending_exception {int e; struct dm_snapshot* snap; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* commit_exception ) (TYPE_2__*,int *,int ,struct dm_snap_pending_exception*) ;} ;


 int commit_callback ;
 int pending_complete (struct dm_snap_pending_exception*,int ) ;
 int stub1 (TYPE_2__*,int *,int ,struct dm_snap_pending_exception*) ;

__attribute__((used)) static void copy_callback(int read_err, unsigned long write_err, void *context)
{
 struct dm_snap_pending_exception *pe = context;
 struct dm_snapshot *s = pe->snap;

 if (read_err || write_err)
  pending_complete(pe, 0);

 else

  s->store->type->commit_exception(s->store, &pe->e,
       commit_callback, pe);
}
