
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {scalar_t__* nr_queued; int * iops; int * io_disp; int * bps; int * bytes_disp; int blkg; } ;
struct throtl_data {int dummy; } ;
struct request_queue {int queue_lock; struct throtl_data* td; } ;
struct blkio_cgroup {int dummy; } ;
struct bio {int bi_rw; int bi_size; } ;


 int BIO_RW_THROTTLED ;
 int READ ;
 int REQ_SYNC ;
 size_t WRITE ;
 int bio_data_dir (struct bio*) ;
 scalar_t__ bio_rw_flagged (struct bio*,int) ;
 int blkiocg_update_dispatch_stats (int *,int ,int,int) ;
 int current ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 struct blkio_cgroup* task_blkio_cgroup (int ) ;
 scalar_t__ tg_may_dispatch (struct throtl_data*,struct throtl_grp*,struct bio*,int *) ;
 scalar_t__ tg_no_rule_group (struct throtl_grp*,int) ;
 int tg_update_disptime (struct throtl_data*,struct throtl_grp*) ;
 int throtl_add_bio_tg (struct throtl_data*,struct throtl_grp*,struct bio*) ;
 int throtl_charge_bio (struct throtl_grp*,struct bio*) ;
 struct throtl_grp* throtl_find_tg (struct throtl_data*,struct blkio_cgroup*) ;
 struct throtl_grp* throtl_get_tg (struct throtl_data*) ;
 int throtl_log_tg (struct throtl_data*,struct throtl_grp*,char*,char,int ,int ,int ,int ,int ,scalar_t__,scalar_t__) ;
 int throtl_schedule_next_dispatch (struct throtl_data*) ;
 int throtl_tg_fill_dev_details (struct throtl_data*,struct throtl_grp*) ;
 int throtl_trim_slice (struct throtl_data*,struct throtl_grp*,int) ;
 scalar_t__ unlikely (int) ;

bool blk_throtl_bio(struct request_queue *q, struct bio *bio)
{
 struct throtl_data *td = q->td;
 struct throtl_grp *tg;
 bool rw = bio_data_dir(bio), update_disptime = 1;
 struct blkio_cgroup *blkcg;
 bool throttled = 0;

 if (bio_rw_flagged(bio, BIO_RW_THROTTLED)) {
  bio->bi_rw &= ~(1 << BIO_RW_THROTTLED);
  goto out;
 }







 rcu_read_lock();
 blkcg = task_blkio_cgroup(current);
 tg = throtl_find_tg(td, blkcg);
 if (tg) {
  throtl_tg_fill_dev_details(td, tg);

  if (tg_no_rule_group(tg, rw)) {
   blkiocg_update_dispatch_stats(&tg->blkg, bio->bi_size,
     rw, bio->bi_rw & REQ_SYNC);
   rcu_read_unlock();
   goto out;
  }
 }
 rcu_read_unlock();





 spin_lock_irq(q->queue_lock);
 tg = throtl_get_tg(td);
 if (unlikely(!tg))
  goto out_unlock;

 if (tg->nr_queued[rw]) {




  update_disptime = 0;
  goto queue_bio;

 }


 if (tg_may_dispatch(td, tg, bio, ((void*)0))) {
  throtl_charge_bio(tg, bio);
  throtl_trim_slice(td, tg, rw);
  goto out_unlock;
 }

queue_bio:
 throtl_log_tg(td, tg, "[%c] bio. bdisp=%u sz=%u bps=%llu"
   " iodisp=%u iops=%u queued=%d/%d",
   rw == READ ? 'R' : 'W',
   tg->bytes_disp[rw], bio->bi_size, tg->bps[rw],
   tg->io_disp[rw], tg->iops[rw],
   tg->nr_queued[READ], tg->nr_queued[WRITE]);

 throtl_add_bio_tg(q->td, tg, bio);
 throttled = 1;

 if (update_disptime) {
  tg_update_disptime(td, tg);
  throtl_schedule_next_dispatch(td);
 }

out_unlock:
 spin_unlock_irq(q->queue_lock);
out:
 return throttled;
}
