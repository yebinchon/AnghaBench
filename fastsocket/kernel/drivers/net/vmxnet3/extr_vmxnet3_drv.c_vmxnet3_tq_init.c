
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int size; void* gen; scalar_t__ next2comp; scalar_t__ next2fill; TYPE_4__* base; } ;
struct TYPE_6__ {int size; void* gen; scalar_t__ next2proc; TYPE_4__* base; } ;
struct TYPE_5__ {int size; TYPE_4__* base; } ;
struct vmxnet3_tx_queue {TYPE_4__* buf_info; TYPE_3__ tx_ring; TYPE_2__ comp_ring; TYPE_1__ data_ring; } ;
struct vmxnet3_adapter {int dummy; } ;
struct Vmxnet3_TxDesc {int dummy; } ;
struct Vmxnet3_TxDataDesc {int dummy; } ;
struct Vmxnet3_TxCompDesc {int dummy; } ;
struct TYPE_8__ {int map_type; } ;


 void* VMXNET3_INIT_GEN ;
 int VMXNET3_MAP_NONE ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static void
vmxnet3_tq_init(struct vmxnet3_tx_queue *tq,
  struct vmxnet3_adapter *adapter)
{
 int i;


 memset(tq->tx_ring.base, 0, tq->tx_ring.size *
        sizeof(struct Vmxnet3_TxDesc));
 tq->tx_ring.next2fill = tq->tx_ring.next2comp = 0;
 tq->tx_ring.gen = VMXNET3_INIT_GEN;

 memset(tq->data_ring.base, 0, tq->data_ring.size *
        sizeof(struct Vmxnet3_TxDataDesc));


 memset(tq->comp_ring.base, 0, tq->comp_ring.size *
        sizeof(struct Vmxnet3_TxCompDesc));
 tq->comp_ring.next2proc = 0;
 tq->comp_ring.gen = VMXNET3_INIT_GEN;


 memset(tq->buf_info, 0, sizeof(tq->buf_info[0]) * tq->tx_ring.size);
 for (i = 0; i < tq->tx_ring.size; i++)
  tq->buf_info[i].map_type = VMXNET3_MAP_NONE;


}
