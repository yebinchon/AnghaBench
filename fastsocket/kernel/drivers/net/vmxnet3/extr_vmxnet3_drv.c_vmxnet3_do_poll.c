
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_adapter {int num_tx_queues; int num_rx_queues; int * rx_queue; int * tx_queue; TYPE_1__* shared; } ;
struct TYPE_2__ {int ecr; } ;


 scalar_t__ unlikely (int ) ;
 int vmxnet3_process_events (struct vmxnet3_adapter*) ;
 scalar_t__ vmxnet3_rq_rx_complete (int *,struct vmxnet3_adapter*,int) ;
 int vmxnet3_tq_tx_complete (int *,struct vmxnet3_adapter*) ;

__attribute__((used)) static int
vmxnet3_do_poll(struct vmxnet3_adapter *adapter, int budget)
{
 int rcd_done = 0, i;
 if (unlikely(adapter->shared->ecr))
  vmxnet3_process_events(adapter);
 for (i = 0; i < adapter->num_tx_queues; i++)
  vmxnet3_tq_tx_complete(&adapter->tx_queue[i], adapter);

 for (i = 0; i < adapter->num_rx_queues; i++)
  rcd_done += vmxnet3_rq_rx_complete(&adapter->rx_queue[i],
         adapter, budget);
 return rcd_done;
}
