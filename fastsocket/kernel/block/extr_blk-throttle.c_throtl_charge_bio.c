
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int blkg; int * io_disp; int * bytes_disp; } ;
struct bio {int bi_rw; scalar_t__ bi_size; } ;


 int REQ_SYNC ;
 int bio_data_dir (struct bio*) ;
 int blkiocg_update_dispatch_stats (int *,scalar_t__,int,int) ;

__attribute__((used)) static void throtl_charge_bio(struct throtl_grp *tg, struct bio *bio)
{
 bool rw = bio_data_dir(bio);
 bool sync = bio->bi_rw & REQ_SYNC;


 tg->bytes_disp[rw] += bio->bi_size;
 tg->io_disp[rw]++;

 blkiocg_update_dispatch_stats(&tg->blkg, bio->bi_size, rw, sync);
}
