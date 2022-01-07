
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool_c {int data_dev; } ;
struct dm_target {int len; struct pool_c* private; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,int ,int ,int ,void*) ;



__attribute__((used)) static int pool_iterate_devices(struct dm_target *ti,
    iterate_devices_callout_fn fn, void *data)
{
 struct pool_c *pt = ti->private;

 return fn(ti, pt->data_dev, 0, ti->len, data);
}
