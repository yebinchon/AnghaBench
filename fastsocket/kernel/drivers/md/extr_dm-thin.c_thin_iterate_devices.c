
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thin_c {int pool_dev; struct pool* pool; } ;
struct pool {int sectors_per_block; TYPE_1__* ti; } ;
struct dm_target {struct thin_c* private; } ;
typedef int sector_t ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,int ,int ,int,void*) ;
struct TYPE_2__ {int len; } ;


 int sector_div (int,int) ;

__attribute__((used)) static int thin_iterate_devices(struct dm_target *ti,
    iterate_devices_callout_fn fn, void *data)
{
 sector_t blocks;
 struct thin_c *tc = ti->private;
 struct pool *pool = tc->pool;





 if (!pool->ti)
  return 0;

 blocks = pool->ti->len;
 (void) sector_div(blocks, pool->sectors_per_block);
 if (blocks)
  return fn(ti, tc->pool_dev, 0, pool->sectors_per_block * blocks, data);

 return 0;
}
