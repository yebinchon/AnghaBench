
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct throtl_grp {unsigned long* slice_start; int* iops; int* io_disp; } ;
struct throtl_data {int dummy; } ;
struct bio {int dummy; } ;


 int HZ ;
 unsigned long UINT_MAX ;
 int bio_data_dir (struct bio*) ;
 int do_div (unsigned long,int) ;
 unsigned long jiffies ;
 unsigned long roundup (unsigned long,unsigned long) ;
 unsigned long throtl_slice ;

__attribute__((used)) static bool tg_with_in_iops_limit(struct throtl_data *td, struct throtl_grp *tg,
  struct bio *bio, unsigned long *wait)
{
 bool rw = bio_data_dir(bio);
 unsigned int io_allowed;
 unsigned long jiffy_elapsed, jiffy_wait, jiffy_elapsed_rnd;
 u64 tmp;

 jiffy_elapsed = jiffy_elapsed_rnd = jiffies - tg->slice_start[rw];


 if (!jiffy_elapsed)
  jiffy_elapsed_rnd = throtl_slice;

 jiffy_elapsed_rnd = roundup(jiffy_elapsed_rnd, throtl_slice);
 tmp = (u64)tg->iops[rw] * jiffy_elapsed_rnd;
 do_div(tmp, HZ);

 if (tmp > UINT_MAX)
  io_allowed = UINT_MAX;
 else
  io_allowed = tmp;

 if (tg->io_disp[rw] + 1 <= io_allowed) {
  if (wait)
   *wait = 0;
  return 1;
 }


 jiffy_wait = ((tg->io_disp[rw] + 1) * HZ)/tg->iops[rw] + 1;

 if (jiffy_wait > jiffy_elapsed)
  jiffy_wait = jiffy_wait - jiffy_elapsed;
 else
  jiffy_wait = 1;

 if (wait)
  *wait = jiffy_wait;
 return 0;
}
