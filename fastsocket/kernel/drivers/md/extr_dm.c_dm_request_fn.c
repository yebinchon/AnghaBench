
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int queue_lock; struct mapped_device* queuedata; } ;
struct request {int cmd_flags; } ;
struct mapped_device {int dummy; } ;
struct dm_target {TYPE_1__* type; } ;
struct dm_table {int dummy; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ (* busy ) (struct dm_target*) ;} ;


 int BUG_ON (int) ;
 int DMERR_LIMIT (char*) ;
 int EIO ;
 int REQ_FLUSH ;
 struct request* blk_peek_request (struct request_queue*) ;
 int blk_plug_device (struct request_queue*) ;
 int blk_queue_plugged (struct request_queue*) ;
 int blk_queue_stopped (struct request_queue*) ;
 scalar_t__ blk_rq_pos (struct request*) ;
 struct dm_table* dm_get_live_table (struct mapped_device*) ;
 int dm_kill_unmapped_request (struct request*,int ) ;
 struct request* dm_start_request (struct mapped_device*,struct request*) ;
 struct dm_target* dm_table_find_target (struct dm_table*,scalar_t__) ;
 int dm_table_put (struct dm_table*) ;
 int dm_target_is_valid (struct dm_target*) ;
 int elv_queue_empty (struct request_queue*) ;
 int irqs_disabled () ;
 scalar_t__ map_request (struct dm_target*,struct request*,struct mapped_device*) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;
 scalar_t__ stub1 (struct dm_target*) ;

__attribute__((used)) static void dm_request_fn(struct request_queue *q)
{
 struct mapped_device *md = q->queuedata;
 struct dm_table *map = dm_get_live_table(md);
 struct dm_target *ti;
 struct request *rq, *clone;
 sector_t pos;







 while (!blk_queue_plugged(q) && !blk_queue_stopped(q)) {
  rq = blk_peek_request(q);
  if (!rq)
   goto plug_and_out;


  pos = 0;
  if (!(rq->cmd_flags & REQ_FLUSH))
   pos = blk_rq_pos(rq);

  ti = dm_table_find_target(map, pos);
  if (!dm_target_is_valid(ti)) {




   DMERR_LIMIT("request attempted access beyond the end of device");
   clone = dm_start_request(md, rq);
   dm_kill_unmapped_request(clone, -EIO);
   continue;
  }

  if (ti->type->busy && ti->type->busy(ti))
   goto plug_and_out;

  clone = dm_start_request(md, rq);

  spin_unlock(q->queue_lock);
  if (map_request(ti, clone, md))
   goto requeued;

  BUG_ON(!irqs_disabled());
  spin_lock(q->queue_lock);
 }

 goto out;

requeued:
 BUG_ON(!irqs_disabled());
 spin_lock(q->queue_lock);

plug_and_out:
 if (!elv_queue_empty(q))

  blk_plug_device(q);

out:
 dm_table_put(map);
}
