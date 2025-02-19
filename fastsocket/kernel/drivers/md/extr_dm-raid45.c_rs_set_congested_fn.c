
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct raid_set {TYPE_1__* ti; } ;
struct mapped_device {int dummy; } ;
struct backing_dev_info {struct raid_set* congested_data; int congested_fn; } ;
struct TYPE_6__ {TYPE_2__* queue; } ;
struct TYPE_5__ {struct backing_dev_info backing_dev_info; } ;
struct TYPE_4__ {int table; } ;


 TYPE_3__* dm_disk (struct mapped_device*) ;
 int dm_put (struct mapped_device*) ;
 struct mapped_device* dm_table_get_md (int ) ;
 int rs_congested ;

__attribute__((used)) static void rs_set_congested_fn(struct raid_set *rs)
{
 struct mapped_device *md = dm_table_get_md(rs->ti->table);
 struct backing_dev_info *bdi = &dm_disk(md)->queue->backing_dev_info;


 bdi->congested_fn = rs_congested;
 bdi->congested_data = rs;
 dm_put(md);
}
