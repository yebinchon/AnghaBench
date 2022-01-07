
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int* bps; int* iops; int * slice_end; int * bio_lists; scalar_t__* nr_queued; } ;
struct throtl_data {int dummy; } ;
struct bio {int dummy; } ;


 int BUG_ON (int) ;
 int bio_data_dir (struct bio*) ;
 struct bio* bio_list_peek (int *) ;
 scalar_t__ jiffies ;
 unsigned long max (unsigned long,unsigned long) ;
 scalar_t__ tg_with_in_bps_limit (struct throtl_data*,struct throtl_grp*,struct bio*,unsigned long*) ;
 scalar_t__ tg_with_in_iops_limit (struct throtl_data*,struct throtl_grp*,struct bio*,unsigned long*) ;
 int throtl_extend_slice (struct throtl_data*,struct throtl_grp*,int,scalar_t__) ;
 scalar_t__ throtl_slice ;
 scalar_t__ throtl_slice_used (struct throtl_data*,struct throtl_grp*,int) ;
 int throtl_start_new_slice (struct throtl_data*,struct throtl_grp*,int) ;
 scalar_t__ time_before (int ,scalar_t__) ;

__attribute__((used)) static bool tg_may_dispatch(struct throtl_data *td, struct throtl_grp *tg,
    struct bio *bio, unsigned long *wait)
{
 bool rw = bio_data_dir(bio);
 unsigned long bps_wait = 0, iops_wait = 0, max_wait = 0;







 BUG_ON(tg->nr_queued[rw] && bio != bio_list_peek(&tg->bio_lists[rw]));


 if (tg->bps[rw] == -1 && tg->iops[rw] == -1) {
  if (wait)
   *wait = 0;
  return 1;
 }






 if (throtl_slice_used(td, tg, rw))
  throtl_start_new_slice(td, tg, rw);
 else {
  if (time_before(tg->slice_end[rw], jiffies + throtl_slice))
   throtl_extend_slice(td, tg, rw, jiffies + throtl_slice);
 }

 if (tg_with_in_bps_limit(td, tg, bio, &bps_wait)
     && tg_with_in_iops_limit(td, tg, bio, &iops_wait)) {
  if (wait)
   *wait = 0;
  return 1;
 }

 max_wait = max(bps_wait, iops_wait);

 if (wait)
  *wait = max_wait;

 if (time_before(tg->slice_end[rw], jiffies + max_wait))
  throtl_extend_slice(td, tg, rw, jiffies + max_wait);

 return 0;
}
