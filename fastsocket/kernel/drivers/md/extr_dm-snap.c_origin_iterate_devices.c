
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int len; struct dm_dev* private; } ;
struct dm_dev {int dummy; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,struct dm_dev*,int ,int ,void*) ;



__attribute__((used)) static int origin_iterate_devices(struct dm_target *ti,
      iterate_devices_callout_fn fn, void *data)
{
 struct dm_dev *dev = ti->private;

 return fn(ti, dev, 0, ti->len, data);
}
