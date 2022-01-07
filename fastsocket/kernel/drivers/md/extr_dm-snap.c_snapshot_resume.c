
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct dm_snapshot* private; } ;
struct dm_snapshot {int active; int lock; } ;


 int SINGLE_DEPTH_NESTING ;
 int __find_snapshots_sharing_cow (struct dm_snapshot*,struct dm_snapshot**,struct dm_snapshot**,int *) ;
 int __handover_exceptions (struct dm_snapshot*,struct dm_snapshot*) ;
 int _origins_lock ;
 int down_read (int *) ;
 int down_write (int *) ;
 int down_write_nested (int *,int ) ;
 int reregister_snapshot (struct dm_snapshot*) ;
 int up_read (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void snapshot_resume(struct dm_target *ti)
{
 struct dm_snapshot *s = ti->private;
 struct dm_snapshot *snap_src = ((void*)0), *snap_dest = ((void*)0);

 down_read(&_origins_lock);
 (void) __find_snapshots_sharing_cow(s, &snap_src, &snap_dest, ((void*)0));
 if (snap_src && snap_dest) {
  down_write(&snap_src->lock);
  down_write_nested(&snap_dest->lock, SINGLE_DEPTH_NESTING);
  __handover_exceptions(snap_src, snap_dest);
  up_write(&snap_dest->lock);
  up_write(&snap_src->lock);
 }
 up_read(&_origins_lock);


 reregister_snapshot(s);

 down_write(&s->lock);
 s->active = 1;
 up_write(&s->lock);
}
