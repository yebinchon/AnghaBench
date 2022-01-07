
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int * bio_lists; } ;
struct throtl_data {int dummy; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;


 size_t READ ;
 size_t WRITE ;
 int bio_data_dir (struct bio*) ;
 struct bio* bio_list_peek (int *) ;
 int tg_dispatch_one_bio (struct throtl_data*,struct throtl_grp*,int ,struct bio_list*) ;
 scalar_t__ tg_may_dispatch (struct throtl_data*,struct throtl_grp*,struct bio*,int *) ;
 int throtl_grp_quantum ;

__attribute__((used)) static int throtl_dispatch_tg(struct throtl_data *td, struct throtl_grp *tg,
    struct bio_list *bl)
{
 unsigned int nr_reads = 0, nr_writes = 0;
 unsigned int max_nr_reads = throtl_grp_quantum*3/4;
 unsigned int max_nr_writes = throtl_grp_quantum - nr_reads;
 struct bio *bio;



 while ((bio = bio_list_peek(&tg->bio_lists[READ]))
  && tg_may_dispatch(td, tg, bio, ((void*)0))) {

  tg_dispatch_one_bio(td, tg, bio_data_dir(bio), bl);
  nr_reads++;

  if (nr_reads >= max_nr_reads)
   break;
 }

 while ((bio = bio_list_peek(&tg->bio_lists[WRITE]))
  && tg_may_dispatch(td, tg, bio, ((void*)0))) {

  tg_dispatch_one_bio(td, tg, bio_data_dir(bio), bl);
  nr_writes++;

  if (nr_writes >= max_nr_writes)
   break;
 }

 return nr_reads + nr_writes;
}
