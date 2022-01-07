
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct as_io_context {unsigned long last_end_request; scalar_t__ last_request_pos; int lock; int state; int nr_dispatched; int nr_queued; } ;
struct as_data {int dummy; } ;
typedef scalar_t__ sector_t ;


 int AS_TASK_IORUNNING ;
 int AS_TASK_IOSTARTED ;
 int BLK_RW_SYNC ;
 scalar_t__ MAX_THINKTIME ;
 int as_update_seekdist (struct as_data*,struct as_io_context*,scalar_t__) ;
 int as_update_thinktime (struct as_data*,struct as_io_context*,unsigned long) ;
 unsigned long atomic_read (int *) ;
 scalar_t__ blk_rq_pos (struct request*) ;
 scalar_t__ blk_rq_sectors (struct request*) ;
 unsigned long jiffies ;
 unsigned long min (unsigned long,scalar_t__) ;
 int rq_is_sync (struct request*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void as_update_iohist(struct as_data *ad, struct as_io_context *aic,
    struct request *rq)
{
 int data_dir = rq_is_sync(rq);
 unsigned long thinktime = 0;
 sector_t seek_dist;

 if (aic == ((void*)0))
  return;

 if (data_dir == BLK_RW_SYNC) {
  unsigned long in_flight = atomic_read(&aic->nr_queued)
     + atomic_read(&aic->nr_dispatched);
  spin_lock(&aic->lock);
  if (test_bit(AS_TASK_IORUNNING, &aic->state) ||
   test_bit(AS_TASK_IOSTARTED, &aic->state)) {

   if (test_bit(AS_TASK_IORUNNING, &aic->state)
       && in_flight == 0) {
    thinktime = jiffies - aic->last_end_request;
    thinktime = min(thinktime, MAX_THINKTIME-1);
   }
   as_update_thinktime(ad, aic, thinktime);


   if (aic->last_request_pos < blk_rq_pos(rq))
    seek_dist = blk_rq_pos(rq) -
         aic->last_request_pos;
   else
    seek_dist = aic->last_request_pos -
         blk_rq_pos(rq);
   as_update_seekdist(ad, aic, seek_dist);
  }
  aic->last_request_pos = blk_rq_pos(rq) + blk_rq_sectors(rq);
  set_bit(AS_TASK_IOSTARTED, &aic->state);
  spin_unlock(&aic->lock);
 }
}
