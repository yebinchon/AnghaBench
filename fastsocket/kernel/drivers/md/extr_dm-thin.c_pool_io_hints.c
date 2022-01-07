
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct queue_limits {int io_opt; scalar_t__ discard_granularity; } ;
struct TYPE_2__ {int discard_enabled; } ;
struct pool_c {TYPE_1__ adjusted_pf; struct pool* pool; } ;
struct pool {int sectors_per_block; } ;
struct dm_target {struct pool_c* private; } ;


 int SECTOR_SHIFT ;
 int blk_limits_io_min (struct queue_limits*,int ) ;
 int blk_limits_io_opt (struct queue_limits*,int) ;
 int disable_passdown_if_not_supported (struct pool_c*) ;
 scalar_t__ do_div (int,int) ;
 int set_discard_limits (struct pool_c*,struct queue_limits*) ;

__attribute__((used)) static void pool_io_hints(struct dm_target *ti, struct queue_limits *limits)
{
 struct pool_c *pt = ti->private;
 struct pool *pool = pt->pool;
 uint64_t io_opt_sectors = limits->io_opt >> SECTOR_SHIFT;





 if (io_opt_sectors < pool->sectors_per_block ||
     do_div(io_opt_sectors, pool->sectors_per_block)) {
  blk_limits_io_min(limits, 0);
  blk_limits_io_opt(limits, pool->sectors_per_block << SECTOR_SHIFT);
 }






 if (!pt->adjusted_pf.discard_enabled) {






  limits->discard_granularity = 0;
  return;
 }

 disable_passdown_if_not_supported(pt);

 set_discard_limits(pt, limits);
}
