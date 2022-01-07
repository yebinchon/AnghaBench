
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_channel {int work_pending; } ;


 int efx_nic_eventq_read_ack (struct efx_channel*) ;
 int smp_wmb () ;

__attribute__((used)) static inline void efx_channel_processed(struct efx_channel *channel)
{



 channel->work_pending = 0;
 smp_wmb();

 efx_nic_eventq_read_ack(channel);
}
