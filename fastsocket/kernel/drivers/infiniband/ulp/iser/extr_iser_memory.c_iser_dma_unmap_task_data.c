
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iser_data_buf {int size; int buf; } ;
struct iscsi_iser_task {struct iser_data_buf* data; scalar_t__* dir; TYPE_3__* iser_conn; } ;
struct ib_device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ib_conn; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {struct ib_device* ib_device; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 size_t ISER_DIR_IN ;
 size_t ISER_DIR_OUT ;
 int ib_dma_unmap_sg (struct ib_device*,int ,int ,int ) ;

void iser_dma_unmap_task_data(struct iscsi_iser_task *iser_task)
{
 struct ib_device *dev;
 struct iser_data_buf *data;

 dev = iser_task->iser_conn->ib_conn->device->ib_device;

 if (iser_task->dir[ISER_DIR_IN]) {
  data = &iser_task->data[ISER_DIR_IN];
  ib_dma_unmap_sg(dev, data->buf, data->size, DMA_FROM_DEVICE);
 }

 if (iser_task->dir[ISER_DIR_OUT]) {
  data = &iser_task->data[ISER_DIR_OUT];
  ib_dma_unmap_sg(dev, data->buf, data->size, DMA_TO_DEVICE);
 }
}
