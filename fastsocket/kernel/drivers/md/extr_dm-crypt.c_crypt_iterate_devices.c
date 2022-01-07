
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int len; struct crypt_config* private; } ;
struct crypt_config {int start; int dev; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,int ,int ,int ,void*) ;



__attribute__((used)) static int crypt_iterate_devices(struct dm_target *ti,
     iterate_devices_callout_fn fn, void *data)
{
 struct crypt_config *cc = ti->private;

 return fn(ti, cc->dev, cc->start, ti->len, data);
}
