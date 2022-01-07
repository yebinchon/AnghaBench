
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct as_io_context {scalar_t__ seek_samples; int seek_mean; } ;
struct as_data {int* last_sector; size_t batch_data_dir; scalar_t__ antic_status; unsigned long antic_start; unsigned long antic_expire; int new_seek_mean; int ioc_finished; } ;
typedef int sector_t ;


 scalar_t__ ANTIC_OFF ;
 int HZ ;
 int blk_rq_pos (struct request*) ;
 unsigned long jiffies ;

__attribute__((used)) static int as_close_req(struct as_data *ad, struct as_io_context *aic,
   struct request *rq)
{
 unsigned long delay;
 sector_t last = ad->last_sector[ad->batch_data_dir];
 sector_t next = blk_rq_pos(rq);
 sector_t delta;
 sector_t s;

 if (ad->antic_status == ANTIC_OFF || !ad->ioc_finished)
  delay = 0;
 else
  delay = jiffies - ad->antic_start;

 if (delay == 0)
  delta = 8192;
 else if (delay <= (20 * HZ / 1000) && delay <= ad->antic_expire)
  delta = 8192 << delay;
 else
  return 1;

 if ((last <= next + (delta>>1)) && (next <= last + delta))
  return 1;

 if (last < next)
  s = next - last;
 else
  s = last - next;

 if (aic->seek_samples == 0) {




  if (ad->new_seek_mean > s) {

   return 1;
  }

 } else {
  if (aic->seek_mean > s) {

   return 1;
  }
 }

 return 0;
}
