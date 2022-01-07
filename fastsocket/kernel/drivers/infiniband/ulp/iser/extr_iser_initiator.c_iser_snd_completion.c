
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iser_tx_desc {scalar_t__ type; int dma_addr; } ;
struct iser_device {int ib_device; } ;
struct iser_conn {int post_send_buf_count; struct iser_device* device; } ;
struct iscsi_task {TYPE_1__* hdr; } ;
struct TYPE_4__ {int desc_cache; } ;
struct TYPE_3__ {scalar_t__ itt; } ;


 int DMA_TO_DEVICE ;
 scalar_t__ ISCSI_TX_CONTROL ;
 scalar_t__ ISCSI_TX_DATAOUT ;
 int ISER_HEADERS_LEN ;
 scalar_t__ RESERVED_ITT ;
 int atomic_dec (int *) ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 TYPE_2__ ig ;
 int iscsi_put_task (struct iscsi_task*) ;
 int kmem_cache_free (int ,struct iser_tx_desc*) ;

void iser_snd_completion(struct iser_tx_desc *tx_desc,
   struct iser_conn *ib_conn)
{
 struct iscsi_task *task;
 struct iser_device *device = ib_conn->device;

 if (tx_desc->type == ISCSI_TX_DATAOUT) {
  ib_dma_unmap_single(device->ib_device, tx_desc->dma_addr,
     ISER_HEADERS_LEN, DMA_TO_DEVICE);
  kmem_cache_free(ig.desc_cache, tx_desc);
 }

 atomic_dec(&ib_conn->post_send_buf_count);

 if (tx_desc->type == ISCSI_TX_CONTROL) {

  task = (void *) ((long)(void *)tx_desc -
      sizeof(struct iscsi_task));
  if (task->hdr->itt == RESERVED_ITT)
   iscsi_put_task(task);
 }
}
