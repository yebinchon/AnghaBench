
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int * nr_queued; int * bio_lists; } ;
struct throtl_data {int * nr_queued; } ;
struct bio {int dummy; } ;


 int bio_data_dir (struct bio*) ;
 int bio_list_add (int *,struct bio*) ;
 int throtl_enqueue_tg (struct throtl_data*,struct throtl_grp*) ;
 int throtl_ref_get_tg (struct throtl_grp*) ;

__attribute__((used)) static void throtl_add_bio_tg(struct throtl_data *td, struct throtl_grp *tg,
   struct bio *bio)
{
 bool rw = bio_data_dir(bio);

 bio_list_add(&tg->bio_lists[rw], bio);

 throtl_ref_get_tg(tg);
 tg->nr_queued[rw]++;
 td->nr_queued[rw]++;
 throtl_enqueue_tg(td, tg);
}
