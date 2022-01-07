
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as_io_context {int ttime_samples; int ttime_total; int ttime_mean; } ;
struct as_data {int new_ttime_total; int new_ttime_mean; int exit_prob; } ;



__attribute__((used)) static void as_update_thinktime(struct as_data *ad, struct as_io_context *aic,
    unsigned long ttime)
{

 if (aic->ttime_samples == 0) {
  ad->new_ttime_total = (7*ad->new_ttime_total + 256*ttime) / 8;
  ad->new_ttime_mean = ad->new_ttime_total / 256;

  ad->exit_prob = (7*ad->exit_prob)/8;
 }
 aic->ttime_samples = (7*aic->ttime_samples + 256) / 8;
 aic->ttime_total = (7*aic->ttime_total + 256*ttime) / 8;
 aic->ttime_mean = (aic->ttime_total + 128) / aic->ttime_samples;
}
