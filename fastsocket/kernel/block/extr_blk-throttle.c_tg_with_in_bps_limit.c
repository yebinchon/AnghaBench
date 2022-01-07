
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct throtl_grp {unsigned long* slice_start; unsigned long* bps; int* bytes_disp; } ;
struct throtl_data {int dummy; } ;
struct bio {int bi_size; } ;


 int HZ ;
 int bio_data_dir (struct bio*) ;
 unsigned long div64_u64 (int,unsigned long) ;
 int do_div (int,int) ;
 unsigned long jiffies ;
 unsigned long roundup (unsigned long,unsigned long) ;
 unsigned long throtl_slice ;

__attribute__((used)) static bool tg_with_in_bps_limit(struct throtl_data *td, struct throtl_grp *tg,
  struct bio *bio, unsigned long *wait)
{
 bool rw = bio_data_dir(bio);
 u64 bytes_allowed, extra_bytes, tmp;
 unsigned long jiffy_elapsed, jiffy_wait, jiffy_elapsed_rnd;

 jiffy_elapsed = jiffy_elapsed_rnd = jiffies - tg->slice_start[rw];


 if (!jiffy_elapsed)
  jiffy_elapsed_rnd = throtl_slice;

 jiffy_elapsed_rnd = roundup(jiffy_elapsed_rnd, throtl_slice);

 tmp = tg->bps[rw] * jiffy_elapsed_rnd;
 do_div(tmp, HZ);
 bytes_allowed = tmp;

 if (tg->bytes_disp[rw] + bio->bi_size <= bytes_allowed) {
  if (wait)
   *wait = 0;
  return 1;
 }


 extra_bytes = tg->bytes_disp[rw] + bio->bi_size - bytes_allowed;
 jiffy_wait = div64_u64(extra_bytes * HZ, tg->bps[rw]);

 if (!jiffy_wait)
  jiffy_wait = 1;





 jiffy_wait = jiffy_wait + (jiffy_elapsed_rnd - jiffy_elapsed);
 if (wait)
  *wait = jiffy_wait;
 return 0;
}
