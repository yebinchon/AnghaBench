
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct __vxge_hw_channel {size_t compl_index; size_t length; TYPE_1__* stats; int ** work_arr; } ;
struct TYPE_2__ {int total_compl_cnt; } ;



void vxge_hw_channel_dtr_complete(struct __vxge_hw_channel *channel)
{
 channel->work_arr[channel->compl_index] = ((void*)0);


 if (++channel->compl_index == channel->length)
  channel->compl_index = 0;

 channel->stats->total_compl_cnt++;
}
