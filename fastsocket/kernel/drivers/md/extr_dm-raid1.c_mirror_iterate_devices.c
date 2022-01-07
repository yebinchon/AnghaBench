
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mirror_set {unsigned int nr_mirrors; TYPE_1__* mirror; } ;
struct dm_target {int len; struct mirror_set* private; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,int ,int ,int ,void*) ;
struct TYPE_2__ {int offset; int dev; } ;



__attribute__((used)) static int mirror_iterate_devices(struct dm_target *ti,
      iterate_devices_callout_fn fn, void *data)
{
 struct mirror_set *ms = ti->private;
 int ret = 0;
 unsigned i;

 for (i = 0; !ret && i < ms->nr_mirrors; i++)
  ret = fn(ti, ms->mirror[i].dev,
    ms->mirror[i].offset, ti->len, data);

 return ret;
}
