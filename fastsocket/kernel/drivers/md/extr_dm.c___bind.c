
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct queue_limits {int dummy; } ;
struct mapped_device {int map_lock; int flags; int immutable_target_type; struct dm_table* map; int geometry; int disk; struct request_queue* queue; } ;
struct dm_table {int dummy; } ;
typedef scalar_t__ sector_t ;


 int DMF_MERGE_IS_OPTIONAL ;
 int __bind_mempools (struct mapped_device*,struct dm_table*) ;
 int __set_size (struct mapped_device*,scalar_t__) ;
 int blk_queue_stopped (struct request_queue*) ;
 int clear_bit (int ,int *) ;
 int dm_table_event_callback (struct dm_table*,int ,struct mapped_device*) ;
 int dm_table_get_immutable_target_type (struct dm_table*) ;
 scalar_t__ dm_table_get_size (struct dm_table*) ;
 int dm_table_merge_is_optional (struct dm_table*) ;
 scalar_t__ dm_table_request_based (struct dm_table*) ;
 int dm_table_set_restrictions (struct dm_table*,struct request_queue*,struct queue_limits*) ;
 int event_callback ;
 scalar_t__ get_capacity (int ) ;
 int memset (int *,int ,int) ;
 int set_bit (int ,int *) ;
 int stop_queue (struct request_queue*) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct dm_table *__bind(struct mapped_device *md, struct dm_table *t,
          struct queue_limits *limits)
{
 struct dm_table *old_map;
 struct request_queue *q = md->queue;
 sector_t size;
 unsigned long flags;
 int merge_is_optional;

 size = dm_table_get_size(t);




 if (size != get_capacity(md->disk))
  memset(&md->geometry, 0, sizeof(md->geometry));

 __set_size(md, size);

 dm_table_event_callback(t, event_callback, md);
 if (dm_table_request_based(t) && !blk_queue_stopped(q))
  stop_queue(q);

 __bind_mempools(md, t);

 merge_is_optional = dm_table_merge_is_optional(t);

 write_lock_irqsave(&md->map_lock, flags);
 old_map = md->map;
 md->map = t;
 md->immutable_target_type = dm_table_get_immutable_target_type(t);

 dm_table_set_restrictions(t, q, limits);
 if (merge_is_optional)
  set_bit(DMF_MERGE_IS_OPTIONAL, &md->flags);
 else
  clear_bit(DMF_MERGE_IS_OPTIONAL, &md->flags);
 write_unlock_irqrestore(&md->map_lock, flags);

 return old_map;
}
