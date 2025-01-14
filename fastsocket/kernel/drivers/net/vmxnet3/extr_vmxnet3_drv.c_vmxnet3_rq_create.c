
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; void* base; int basePA; } ;
struct vmxnet3_rx_queue {TYPE_2__* rx_ring; struct vmxnet3_rx_buf_info** buf_info; TYPE_1__ comp_ring; } ;
struct vmxnet3_rx_buf_info {int dummy; } ;
struct vmxnet3_adapter {int netdev; int pdev; } ;
struct Vmxnet3_RxDesc {int dummy; } ;
struct Vmxnet3_RxCompDesc {int dummy; } ;
struct TYPE_4__ {int size; void* base; int basePA; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct vmxnet3_rx_buf_info* kzalloc (size_t,int ) ;
 int netdev_err (int ,char*,...) ;
 void* pci_alloc_consistent (int ,size_t,int *) ;
 int vmxnet3_rq_destroy (struct vmxnet3_rx_queue*,struct vmxnet3_adapter*) ;

__attribute__((used)) static int
vmxnet3_rq_create(struct vmxnet3_rx_queue *rq, struct vmxnet3_adapter *adapter)
{
 int i;
 size_t sz;
 struct vmxnet3_rx_buf_info *bi;

 for (i = 0; i < 2; i++) {

  sz = rq->rx_ring[i].size * sizeof(struct Vmxnet3_RxDesc);
  rq->rx_ring[i].base = pci_alloc_consistent(adapter->pdev, sz,
       &rq->rx_ring[i].basePA);
  if (!rq->rx_ring[i].base) {
   netdev_err(adapter->netdev,
       "failed to allocate rx ring %d\n", i);
   goto err;
  }
 }

 sz = rq->comp_ring.size * sizeof(struct Vmxnet3_RxCompDesc);
 rq->comp_ring.base = pci_alloc_consistent(adapter->pdev, sz,
        &rq->comp_ring.basePA);
 if (!rq->comp_ring.base) {
  netdev_err(adapter->netdev, "failed to allocate rx comp ring\n");
  goto err;
 }

 sz = sizeof(struct vmxnet3_rx_buf_info) * (rq->rx_ring[0].size +
         rq->rx_ring[1].size);
 bi = kzalloc(sz, GFP_KERNEL);
 if (!bi)
  goto err;

 rq->buf_info[0] = bi;
 rq->buf_info[1] = bi + rq->rx_ring[0].size;

 return 0;

err:
 vmxnet3_rq_destroy(rq, adapter);
 return -ENOMEM;
}
