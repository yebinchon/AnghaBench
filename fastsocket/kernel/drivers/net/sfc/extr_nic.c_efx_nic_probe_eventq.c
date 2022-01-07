
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
struct efx_channel {int eventq_mask; int eventq; struct efx_nic* efx; } ;
typedef int efx_qword_t ;


 int efx_alloc_special_buffer (struct efx_nic*,int *,unsigned int) ;

int efx_nic_probe_eventq(struct efx_channel *channel)
{
 struct efx_nic *efx = channel->efx;
 unsigned entries;

 entries = channel->eventq_mask + 1;
 return efx_alloc_special_buffer(efx, &channel->eventq,
     entries * sizeof(efx_qword_t));
}
