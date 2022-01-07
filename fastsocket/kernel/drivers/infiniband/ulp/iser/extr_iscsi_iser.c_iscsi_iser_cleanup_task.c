
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iser_tx_desc {int dma_addr; } ;
struct iser_device {int ib_device; } ;
struct iscsi_task {int sc; TYPE_1__* conn; struct iscsi_iser_task* dd_data; } ;
struct iscsi_iser_task {scalar_t__ status; struct iser_tx_desc desc; } ;
struct iscsi_iser_conn {TYPE_2__* ib_conn; } ;
struct TYPE_4__ {struct iser_device* device; } ;
struct TYPE_3__ {struct iscsi_iser_conn* dd_data; } ;


 int DMA_TO_DEVICE ;
 int ISER_HEADERS_LEN ;
 scalar_t__ ISER_TASK_STATUS_COMPLETED ;
 scalar_t__ ISER_TASK_STATUS_STARTED ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 int iser_task_rdma_finalize (struct iscsi_iser_task*) ;

__attribute__((used)) static void iscsi_iser_cleanup_task(struct iscsi_task *task)
{
 struct iscsi_iser_task *iser_task = task->dd_data;
 struct iser_tx_desc *tx_desc = &iser_task->desc;

 struct iscsi_iser_conn *iser_conn = task->conn->dd_data;
 struct iser_device *device = iser_conn->ib_conn->device;

 ib_dma_unmap_single(device->ib_device,
  tx_desc->dma_addr, ISER_HEADERS_LEN, DMA_TO_DEVICE);


 if (!task->sc)
  return;

 if (iser_task->status == ISER_TASK_STATUS_STARTED) {
  iser_task->status = ISER_TASK_STATUS_COMPLETED;
  iser_task_rdma_finalize(iser_task);
 }
}
