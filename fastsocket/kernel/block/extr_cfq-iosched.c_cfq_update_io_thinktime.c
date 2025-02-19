
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_io_context {unsigned long last_end_request; int ttime_samples; int ttime_total; int ttime_mean; } ;
struct cfq_data {unsigned long cfq_slice_idle; } ;


 unsigned long jiffies ;
 unsigned long min (unsigned long,unsigned long) ;

__attribute__((used)) static void
cfq_update_io_thinktime(struct cfq_data *cfqd, struct cfq_io_context *cic)
{
 unsigned long elapsed = jiffies - cic->last_end_request;
 unsigned long ttime = min(elapsed, 2UL * cfqd->cfq_slice_idle);

 cic->ttime_samples = (7*cic->ttime_samples + 256) / 8;
 cic->ttime_total = (7*cic->ttime_total + 256*ttime) / 8;
 cic->ttime_mean = (cic->ttime_total + 128) / cic->ttime_samples;
}
