
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dm_target {int len; struct dm_snapshot* private; } ;
struct dm_snapshot {TYPE_1__* cow; TYPE_1__* origin; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,TYPE_1__*,int ,int ,void*) ;
struct TYPE_3__ {int bdev; } ;


 int get_dev_size (int ) ;

__attribute__((used)) static int snapshot_iterate_devices(struct dm_target *ti,
        iterate_devices_callout_fn fn, void *data)
{
 struct dm_snapshot *snap = ti->private;
 int r;

 r = fn(ti, snap->origin, 0, ti->len, data);

 if (!r)
  r = fn(ti, snap->cow, 0, get_dev_size(snap->cow->bdev), data);

 return r;
}
