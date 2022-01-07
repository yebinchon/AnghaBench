
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int tally ;
struct survey_info {unsigned int channel_time; unsigned int channel_time_busy; unsigned int channel_time_tx; } ;
struct carl9170_tally_rsp {int rx_overrun; int rx_total; int tx_time; int cca; int active; int tick; } ;
struct TYPE_4__ {unsigned int active; unsigned int cca; unsigned int tx_time; unsigned int rx_total; unsigned int rx_overrun; } ;
struct ar9170 {TYPE_2__ tally; TYPE_1__* channel; struct survey_info* survey; } ;
struct TYPE_3__ {size_t hw_value; } ;


 int CARL9170_CMD_TALLY ;
 int carl9170_exec_cmd (struct ar9170*,int ,int ,int *,int,int *) ;
 int do_div (unsigned int,int) ;
 unsigned int le32_to_cpu (int ) ;

int carl9170_collect_tally(struct ar9170 *ar)
{
 struct carl9170_tally_rsp tally;
 struct survey_info *info;
 unsigned int tick;
 int err;

 err = carl9170_exec_cmd(ar, CARL9170_CMD_TALLY, 0, ((void*)0),
    sizeof(tally), (u8 *)&tally);
 if (err)
  return err;

 tick = le32_to_cpu(tally.tick);
 if (tick) {
  ar->tally.active += le32_to_cpu(tally.active) / tick;
  ar->tally.cca += le32_to_cpu(tally.cca) / tick;
  ar->tally.tx_time += le32_to_cpu(tally.tx_time) / tick;
  ar->tally.rx_total += le32_to_cpu(tally.rx_total);
  ar->tally.rx_overrun += le32_to_cpu(tally.rx_overrun);

  if (ar->channel) {
   info = &ar->survey[ar->channel->hw_value];
   info->channel_time = ar->tally.active;
   info->channel_time_busy = ar->tally.cca;
   info->channel_time_tx = ar->tally.tx_time;
   do_div(info->channel_time, 1000);
   do_div(info->channel_time_busy, 1000);
   do_div(info->channel_time_tx, 1000);
  }
 }
 return 0;
}
