
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_limits {scalar_t__ discard_zeroes_data; scalar_t__ no_cluster; } ;
struct request_queue {struct queue_limits limits; } ;
struct dm_table {int dummy; } ;


 int QUEUE_FLAG_ADD_RANDOM ;
 int QUEUE_FLAG_CLUSTER ;
 int QUEUE_FLAG_DISCARD ;
 int QUEUE_FLAG_NONROT ;
 int QUEUE_FLAG_STACKABLE ;
 unsigned int REQ_FLUSH ;
 unsigned int REQ_FUA ;
 scalar_t__ blk_queue_add_random (struct request_queue*) ;
 int blk_queue_flush (struct request_queue*,unsigned int) ;
 int device_is_nonrot ;
 int device_is_not_random ;
 scalar_t__ dm_table_all_devices_attribute (struct dm_table*,int ) ;
 int dm_table_discard_zeroes_data (struct dm_table*) ;
 scalar_t__ dm_table_request_based (struct dm_table*) ;
 int dm_table_set_integrity (struct dm_table*) ;
 int dm_table_supports_discards (struct dm_table*) ;
 scalar_t__ dm_table_supports_flush (struct dm_table*,unsigned int) ;
 int queue_flag_clear_unlocked (int ,struct request_queue*) ;
 int queue_flag_set_unlocked (int ,struct request_queue*) ;
 int smp_mb () ;

void dm_table_set_restrictions(struct dm_table *t, struct request_queue *q,
          struct queue_limits *limits)
{
 unsigned flush = 0;




 q->limits = *limits;

 if (limits->no_cluster)
  queue_flag_clear_unlocked(QUEUE_FLAG_CLUSTER, q);
 else
  queue_flag_set_unlocked(QUEUE_FLAG_CLUSTER, q);

 if (!dm_table_supports_discards(t))
  queue_flag_clear_unlocked(QUEUE_FLAG_DISCARD, q);
 else
  queue_flag_set_unlocked(QUEUE_FLAG_DISCARD, q);

 if (dm_table_supports_flush(t, REQ_FLUSH)) {
  flush |= REQ_FLUSH;
  if (dm_table_supports_flush(t, REQ_FUA))
   flush |= REQ_FUA;
 }
 blk_queue_flush(q, flush);

 if (!dm_table_discard_zeroes_data(t))
  q->limits.discard_zeroes_data = 0;


 if (dm_table_all_devices_attribute(t, device_is_nonrot))
  queue_flag_set_unlocked(QUEUE_FLAG_NONROT, q);
 else
  queue_flag_clear_unlocked(QUEUE_FLAG_NONROT, q);

 dm_table_set_integrity(t);







 if (blk_queue_add_random(q) && dm_table_all_devices_attribute(t, device_is_not_random))
  queue_flag_clear_unlocked(QUEUE_FLAG_ADD_RANDOM, q);
 smp_mb();
 if (dm_table_request_based(t))
  queue_flag_set_unlocked(QUEUE_FLAG_STACKABLE, q);
}
