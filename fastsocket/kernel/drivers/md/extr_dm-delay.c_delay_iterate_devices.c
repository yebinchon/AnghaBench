
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int len; struct delay_c* private; } ;
struct delay_c {int start_write; scalar_t__ dev_write; int start_read; scalar_t__ dev_read; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,scalar_t__,int ,int ,void*) ;



__attribute__((used)) static int delay_iterate_devices(struct dm_target *ti,
     iterate_devices_callout_fn fn, void *data)
{
 struct delay_c *dc = ti->private;
 int ret = 0;

 ret = fn(ti, dc->dev_read, dc->start_read, ti->len, data);
 if (ret)
  goto out;

 if (dc->dev_write)
  ret = fn(ti, dc->dev_write, dc->start_write, ti->len, data);

out:
 return ret;
}
