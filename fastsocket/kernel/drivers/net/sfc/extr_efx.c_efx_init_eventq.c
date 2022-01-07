
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_channel {scalar_t__ eventq_read_ptr; int channel; TYPE_1__* efx; } ;
struct TYPE_2__ {int net_dev; } ;


 int drv ;
 int efx_nic_init_eventq (struct efx_channel*) ;
 int netif_dbg (TYPE_1__*,int ,int ,char*,int ) ;

__attribute__((used)) static void efx_init_eventq(struct efx_channel *channel)
{
 netif_dbg(channel->efx, drv, channel->efx->net_dev,
    "chan %d init event queue\n", channel->channel);

 channel->eventq_read_ptr = 0;

 efx_nic_init_eventq(channel);
}
