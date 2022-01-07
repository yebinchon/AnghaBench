
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_channel {int event_test_cpu; } ;


 int ACCESS_ONCE (int ) ;

__attribute__((used)) static inline int efx_nic_event_test_irq_cpu(struct efx_channel *channel)
{
 return ACCESS_ONCE(channel->event_test_cpu);
}
