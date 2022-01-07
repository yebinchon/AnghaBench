
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_channel {int event_test_cpu; } ;


 int EFX_CHANNEL_MAGIC_TEST (struct efx_channel*) ;
 int efx_magic_event (struct efx_channel*,int ) ;
 int smp_wmb () ;

void efx_nic_event_test_start(struct efx_channel *channel)
{
 channel->event_test_cpu = -1;
 smp_wmb();
 efx_magic_event(channel, EFX_CHANNEL_MAGIC_TEST(channel));
}
