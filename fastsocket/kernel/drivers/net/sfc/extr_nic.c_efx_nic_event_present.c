
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_channel {int eventq_read_ptr; } ;


 int efx_event (struct efx_channel*,int ) ;
 int efx_event_present (int ) ;

bool efx_nic_event_present(struct efx_channel *channel)
{
 return efx_event_present(efx_event(channel, channel->eventq_read_ptr));
}
