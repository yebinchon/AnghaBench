
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {unsigned long disptime; int * bio_lists; } ;
struct throtl_data {int dummy; } ;
struct bio {int dummy; } ;


 size_t READ ;
 size_t WRITE ;
 struct bio* bio_list_peek (int *) ;
 unsigned long jiffies ;
 unsigned long min (unsigned long,unsigned long) ;
 int tg_may_dispatch (struct throtl_data*,struct throtl_grp*,struct bio*,unsigned long*) ;
 int throtl_dequeue_tg (struct throtl_data*,struct throtl_grp*) ;
 int throtl_enqueue_tg (struct throtl_data*,struct throtl_grp*) ;

__attribute__((used)) static void tg_update_disptime(struct throtl_data *td, struct throtl_grp *tg)
{
 unsigned long read_wait = -1, write_wait = -1, min_wait = -1, disptime;
 struct bio *bio;

 if ((bio = bio_list_peek(&tg->bio_lists[READ])))
  tg_may_dispatch(td, tg, bio, &read_wait);

 if ((bio = bio_list_peek(&tg->bio_lists[WRITE])))
  tg_may_dispatch(td, tg, bio, &write_wait);

 min_wait = min(read_wait, write_wait);
 disptime = jiffies + min_wait;


 throtl_dequeue_tg(td, tg);
 tg->disptime = disptime;
 throtl_enqueue_tg(td, tg);
}
