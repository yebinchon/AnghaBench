
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __vxge_hw_channel {int dummy; } ;
struct __vxge_hw_ring {struct __vxge_hw_channel channel; } ;


 int vxge_hw_channel_dtr_post (struct __vxge_hw_channel*,void*) ;

void vxge_hw_ring_rxd_pre_post(struct __vxge_hw_ring *ring, void *rxdh)
{
 struct __vxge_hw_channel *channel;

 channel = &ring->channel;

 vxge_hw_channel_dtr_post(channel, rxdh);
}
