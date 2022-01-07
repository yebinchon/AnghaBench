
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int size; int * base; int basePA; } ;
struct TYPE_5__ {int size; int * base; int basePA; } ;
struct TYPE_4__ {int size; int * base; int basePA; } ;
struct vmxnet3_tx_queue {int * buf_info; TYPE_3__ comp_ring; TYPE_2__ data_ring; TYPE_1__ tx_ring; } ;
struct vmxnet3_adapter {int pdev; } ;
struct Vmxnet3_TxDesc {int dummy; } ;
struct Vmxnet3_TxDataDesc {int dummy; } ;
struct Vmxnet3_TxCompDesc {int dummy; } ;


 int kfree (int *) ;
 int pci_free_consistent (int ,int,int *,int ) ;

__attribute__((used)) static void
vmxnet3_tq_destroy(struct vmxnet3_tx_queue *tq,
     struct vmxnet3_adapter *adapter)
{
 if (tq->tx_ring.base) {
  pci_free_consistent(adapter->pdev, tq->tx_ring.size *
        sizeof(struct Vmxnet3_TxDesc),
        tq->tx_ring.base, tq->tx_ring.basePA);
  tq->tx_ring.base = ((void*)0);
 }
 if (tq->data_ring.base) {
  pci_free_consistent(adapter->pdev, tq->data_ring.size *
        sizeof(struct Vmxnet3_TxDataDesc),
        tq->data_ring.base, tq->data_ring.basePA);
  tq->data_ring.base = ((void*)0);
 }
 if (tq->comp_ring.base) {
  pci_free_consistent(adapter->pdev, tq->comp_ring.size *
        sizeof(struct Vmxnet3_TxCompDesc),
        tq->comp_ring.base, tq->comp_ring.basePA);
  tq->comp_ring.base = ((void*)0);
 }
 kfree(tq->buf_info);
 tq->buf_info = ((void*)0);
}
