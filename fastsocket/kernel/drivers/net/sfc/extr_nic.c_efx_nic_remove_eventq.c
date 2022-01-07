
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_channel {int eventq; int efx; } ;


 int efx_free_special_buffer (int ,int *) ;

void efx_nic_remove_eventq(struct efx_channel *channel)
{
 efx_free_special_buffer(channel->efx, &channel->eventq);
}
