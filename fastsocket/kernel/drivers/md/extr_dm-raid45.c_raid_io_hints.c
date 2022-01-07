
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chunk_size; int data_devs; } ;
struct raid_set {TYPE_1__ set; } ;
struct queue_limits {int dummy; } ;
struct dm_target {struct raid_set* private; } ;


 int blk_limits_io_min (struct queue_limits*,int) ;
 int blk_limits_io_opt (struct queue_limits*,int) ;

__attribute__((used)) static void raid_io_hints(struct dm_target *ti, struct queue_limits *limits)
{
 struct raid_set *rs = ti->private;

 blk_limits_io_min(limits, rs->set.chunk_size);
 blk_limits_io_opt(limits, rs->set.chunk_size * rs->set.data_devs);
}
