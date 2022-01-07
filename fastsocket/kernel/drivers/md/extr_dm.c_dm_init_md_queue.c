
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mapped_device {TYPE_2__* queue; } ;
struct TYPE_6__ {struct mapped_device* congested_data; int congested_fn; } ;
struct TYPE_7__ {int unplug_fn; TYPE_1__ backing_dev_info; struct mapped_device* queuedata; } ;


 int BLK_BOUNCE_ANY ;
 int QUEUE_FLAG_STACKABLE ;
 int blk_queue_bounce_limit (TYPE_2__*,int ) ;
 int blk_queue_make_request (TYPE_2__*,int ) ;
 int blk_queue_merge_bvec (TYPE_2__*,int ) ;
 int dm_any_congested ;
 int dm_merge_bvec ;
 int dm_request ;
 int dm_unplug_all ;
 int queue_flag_clear_unlocked (int ,TYPE_2__*) ;

__attribute__((used)) static void dm_init_md_queue(struct mapped_device *md)
{
 queue_flag_clear_unlocked(QUEUE_FLAG_STACKABLE, md->queue);

 md->queue->queuedata = md;
 md->queue->backing_dev_info.congested_fn = dm_any_congested;
 md->queue->backing_dev_info.congested_data = md;
 blk_queue_make_request(md->queue, dm_request);
 blk_queue_bounce_limit(md->queue, BLK_BOUNCE_ANY);
 md->queue->unplug_fn = dm_unplug_all;
 blk_queue_merge_bvec(md->queue, dm_merge_bvec);
}
