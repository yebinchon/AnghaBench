
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chunk_sectors; struct r5conf* private; } ;
struct raid_set {TYPE_1__ md; } ;
struct r5conf {unsigned int raid_disks; unsigned int max_degraded; } ;
struct queue_limits {int dummy; } ;
struct dm_target {struct raid_set* private; } ;


 int blk_limits_io_min (struct queue_limits*,unsigned int) ;
 int blk_limits_io_opt (struct queue_limits*,unsigned int) ;

__attribute__((used)) static void raid_io_hints(struct dm_target *ti, struct queue_limits *limits)
{
 struct raid_set *rs = ti->private;
 unsigned chunk_size = rs->md.chunk_sectors << 9;
 struct r5conf *conf = rs->md.private;

 blk_limits_io_min(limits, chunk_size);
 blk_limits_io_opt(limits, chunk_size * (conf->raid_disks - conf->max_degraded));
}
