
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iwl_traffic_load {scalar_t__ time_stamp; size_t head; scalar_t__ queue_count; scalar_t__* packet_count; int total; } ;


 scalar_t__ TID_MAX_TIME_DIFF ;
 scalar_t__ TID_QUEUE_CELL_SPACING ;
 size_t TID_QUEUE_MAX_SIZE ;

__attribute__((used)) static void rs_tl_rm_old_stats(struct iwl_traffic_load *tl, u32 curr_time)
{

 u32 oldest_time = curr_time - TID_MAX_TIME_DIFF;

 while (tl->queue_count &&
        (tl->time_stamp < oldest_time)) {
  tl->total -= tl->packet_count[tl->head];
  tl->packet_count[tl->head] = 0;
  tl->time_stamp += TID_QUEUE_CELL_SPACING;
  tl->queue_count--;
  tl->head++;
  if (tl->head >= TID_QUEUE_MAX_SIZE)
   tl->head = 0;
 }
}
