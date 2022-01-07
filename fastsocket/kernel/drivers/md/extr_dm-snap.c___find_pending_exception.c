
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dm_snapshot {int pending; TYPE_2__* store; } ;
struct TYPE_7__ {int old_chunk; } ;
struct dm_snap_pending_exception {TYPE_3__ e; int * full_bio; scalar_t__ started; int snapshot_bios; int origin_bios; } ;
typedef int chunk_t ;
struct TYPE_6__ {TYPE_1__* type; } ;
struct TYPE_5__ {scalar_t__ (* prepare_exception ) (TYPE_2__*,TYPE_3__*) ;} ;


 struct dm_snap_pending_exception* __lookup_pending_exception (struct dm_snapshot*,int ) ;
 int bio_list_init (int *) ;
 int dm_insert_exception (int *,TYPE_3__*) ;
 int free_pending_exception (struct dm_snap_pending_exception*) ;
 scalar_t__ stub1 (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static struct dm_snap_pending_exception *
__find_pending_exception(struct dm_snapshot *s,
    struct dm_snap_pending_exception *pe, chunk_t chunk)
{
 struct dm_snap_pending_exception *pe2;

 pe2 = __lookup_pending_exception(s, chunk);
 if (pe2) {
  free_pending_exception(pe);
  return pe2;
 }

 pe->e.old_chunk = chunk;
 bio_list_init(&pe->origin_bios);
 bio_list_init(&pe->snapshot_bios);
 pe->started = 0;
 pe->full_bio = ((void*)0);

 if (s->store->type->prepare_exception(s->store, &pe->e)) {
  free_pending_exception(pe);
  return ((void*)0);
 }

 dm_insert_exception(&s->pending, &pe->e);

 return pe;
}
