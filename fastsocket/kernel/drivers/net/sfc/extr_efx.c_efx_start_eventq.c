
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_channel {int work_pending; int enabled; int napi_str; int channel; TYPE_1__* efx; } ;
struct TYPE_2__ {int net_dev; } ;


 int efx_nic_eventq_read_ack (struct efx_channel*) ;
 int ifup ;
 int napi_enable (int *) ;
 int netif_dbg (TYPE_1__*,int ,int ,char*,int ) ;
 int smp_wmb () ;

__attribute__((used)) static void efx_start_eventq(struct efx_channel *channel)
{
 netif_dbg(channel->efx, ifup, channel->efx->net_dev,
    "chan %d start event queue\n", channel->channel);





 channel->work_pending = 0;
 channel->enabled = 1;
 smp_wmb();

 napi_enable(&channel->napi_str);
 efx_nic_eventq_read_ack(channel);
}
