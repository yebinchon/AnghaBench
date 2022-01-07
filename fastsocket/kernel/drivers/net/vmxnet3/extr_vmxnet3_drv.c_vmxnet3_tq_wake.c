
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_tx_queue {int stopped; } ;
struct vmxnet3_adapter {int tx_queue; int netdev; } ;


 int netif_wake_subqueue (int ,struct vmxnet3_tx_queue*) ;

__attribute__((used)) static void
vmxnet3_tq_wake(struct vmxnet3_tx_queue *tq, struct vmxnet3_adapter *adapter)
{
 tq->stopped = 0;
 netif_wake_subqueue(adapter->netdev, (tq - adapter->tx_queue));
}
