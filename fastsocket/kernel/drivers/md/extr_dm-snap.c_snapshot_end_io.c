
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union map_info {struct dm_snap_tracked_chunk* ptr; } ;
struct dm_target {struct dm_snapshot* private; } ;
struct dm_snapshot {int dummy; } ;
struct dm_snap_tracked_chunk {int dummy; } ;
struct bio {int dummy; } ;


 int stop_tracking_chunk (struct dm_snapshot*,struct dm_snap_tracked_chunk*) ;

__attribute__((used)) static int snapshot_end_io(struct dm_target *ti, struct bio *bio,
      int error, union map_info *map_context)
{
 struct dm_snapshot *s = ti->private;
 struct dm_snap_tracked_chunk *c = map_context->ptr;

 if (c)
  stop_tracking_chunk(s, c);

 return 0;
}
