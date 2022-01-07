
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_channel {int work_pending; int napi_str; int channel; TYPE_1__* efx; } ;
struct TYPE_2__ {int net_dev; } ;


 int intr ;
 int napi_schedule (int *) ;
 int netif_vdbg (TYPE_1__*,int ,int ,char*,int ,int ) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static inline void efx_schedule_channel(struct efx_channel *channel)
{
 netif_vdbg(channel->efx, intr, channel->efx->net_dev,
     "channel %d scheduling NAPI poll on CPU%d\n",
     channel->channel, raw_smp_processor_id());
 channel->work_pending = 1;

 napi_schedule(&channel->napi_str);
}
