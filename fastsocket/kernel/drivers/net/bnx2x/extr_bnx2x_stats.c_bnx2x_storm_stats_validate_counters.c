
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct stats_counter {int tstats_counter; int cstats_counter; int ustats_counter; int xstats_counter; } ;
struct bnx2x {int stats_counter; TYPE_1__* fw_stats_data; } ;
struct TYPE_2__ {struct stats_counter storm_counters; } ;


 int BNX2X_MSG_STATS ;
 int DP (int ,char*,scalar_t__,int ) ;
 int EAGAIN ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static int bnx2x_storm_stats_validate_counters(struct bnx2x *bp)
{
 struct stats_counter *counters = &bp->fw_stats_data->storm_counters;
 u16 cur_stats_counter;



 cur_stats_counter = bp->stats_counter - 1;


 if (le16_to_cpu(counters->xstats_counter) != cur_stats_counter) {
  DP(BNX2X_MSG_STATS,
     "stats not updated by xstorm  xstorm counter (0x%x) != stats_counter (0x%x)\n",
     le16_to_cpu(counters->xstats_counter), bp->stats_counter);
  return -EAGAIN;
 }

 if (le16_to_cpu(counters->ustats_counter) != cur_stats_counter) {
  DP(BNX2X_MSG_STATS,
     "stats not updated by ustorm  ustorm counter (0x%x) != stats_counter (0x%x)\n",
     le16_to_cpu(counters->ustats_counter), bp->stats_counter);
  return -EAGAIN;
 }

 if (le16_to_cpu(counters->cstats_counter) != cur_stats_counter) {
  DP(BNX2X_MSG_STATS,
     "stats not updated by cstorm  cstorm counter (0x%x) != stats_counter (0x%x)\n",
     le16_to_cpu(counters->cstats_counter), bp->stats_counter);
  return -EAGAIN;
 }

 if (le16_to_cpu(counters->tstats_counter) != cur_stats_counter) {
  DP(BNX2X_MSG_STATS,
     "stats not updated by tstorm  tstorm counter (0x%x) != stats_counter (0x%x)\n",
     le16_to_cpu(counters->tstats_counter), bp->stats_counter);
  return -EAGAIN;
 }
 return 0;
}
