
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int size; int * base; int basePA; } ;
struct vmxnet3_rx_queue {TYPE_2__ comp_ring; TYPE_3__** buf_info; TYPE_1__* rx_ring; } ;
struct vmxnet3_adapter {int pdev; } ;
struct Vmxnet3_RxDesc {int dummy; } ;
struct Vmxnet3_RxCompDesc {int dummy; } ;
struct TYPE_6__ {int * page; } ;
struct TYPE_4__ {int size; int * base; int basePA; } ;


 int BUG_ON (int ) ;
 int kfree (TYPE_3__*) ;
 int pci_free_consistent (int ,int,int *,int ) ;

__attribute__((used)) static void vmxnet3_rq_destroy(struct vmxnet3_rx_queue *rq,
          struct vmxnet3_adapter *adapter)
{
 int i;
 int j;


 for (i = 0; i < 2; i++) {
  if (rq->buf_info[i]) {
   for (j = 0; j < rq->rx_ring[i].size; j++)
    BUG_ON(rq->buf_info[i][j].page != ((void*)0));
  }
 }


 kfree(rq->buf_info[0]);

 for (i = 0; i < 2; i++) {
  if (rq->rx_ring[i].base) {
   pci_free_consistent(adapter->pdev, rq->rx_ring[i].size
         * sizeof(struct Vmxnet3_RxDesc),
         rq->rx_ring[i].base,
         rq->rx_ring[i].basePA);
   rq->rx_ring[i].base = ((void*)0);
  }
  rq->buf_info[i] = ((void*)0);
 }

 if (rq->comp_ring.base) {
  pci_free_consistent(adapter->pdev, rq->comp_ring.size *
        sizeof(struct Vmxnet3_RxCompDesc),
        rq->comp_ring.base, rq->comp_ring.basePA);
  rq->comp_ring.base = ((void*)0);
 }
}
