
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {int slow_fill_count; } ;


 int efx_nic_generate_fill_event (struct efx_rx_queue*) ;

void efx_rx_slow_fill(unsigned long context)
{
 struct efx_rx_queue *rx_queue = (struct efx_rx_queue *)context;


 efx_nic_generate_fill_event(rx_queue);
 ++rx_queue->slow_fill_count;
}
