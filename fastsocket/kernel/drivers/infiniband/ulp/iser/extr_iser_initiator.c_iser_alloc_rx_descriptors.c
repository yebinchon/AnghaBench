
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ib_sge {int lkey; int length; int addr; } ;
struct iser_rx_desc {int dma_addr; struct ib_sge rx_sg; } ;
struct iser_device {int ib_device; TYPE_1__* mr; } ;
struct iser_conn {struct iser_rx_desc* rx_descs; scalar_t__ rx_desc_head; struct iser_device* device; } ;
struct TYPE_2__ {int lkey; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ISER_QP_MAX_RECV_DTOS ;
 int ISER_RX_PAYLOAD_SIZE ;
 int ib_dma_map_single (int ,void*,int ,int ) ;
 scalar_t__ ib_dma_mapping_error (int ,int ) ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 int iser_err (char*) ;
 int kfree (struct iser_rx_desc*) ;
 struct iser_rx_desc* kmalloc (int,int ) ;

int iser_alloc_rx_descriptors(struct iser_conn *ib_conn)
{
 int i, j;
 u64 dma_addr;
 struct iser_rx_desc *rx_desc;
 struct ib_sge *rx_sg;
 struct iser_device *device = ib_conn->device;

 ib_conn->rx_descs = kmalloc(ISER_QP_MAX_RECV_DTOS *
    sizeof(struct iser_rx_desc), GFP_KERNEL);
 if (!ib_conn->rx_descs)
  goto rx_desc_alloc_fail;

 rx_desc = ib_conn->rx_descs;

 for (i = 0; i < ISER_QP_MAX_RECV_DTOS; i++, rx_desc++) {
  dma_addr = ib_dma_map_single(device->ib_device, (void *)rx_desc,
     ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
  if (ib_dma_mapping_error(device->ib_device, dma_addr))
   goto rx_desc_dma_map_failed;

  rx_desc->dma_addr = dma_addr;

  rx_sg = &rx_desc->rx_sg;
  rx_sg->addr = rx_desc->dma_addr;
  rx_sg->length = ISER_RX_PAYLOAD_SIZE;
  rx_sg->lkey = device->mr->lkey;
 }

 ib_conn->rx_desc_head = 0;
 return 0;

rx_desc_dma_map_failed:
 rx_desc = ib_conn->rx_descs;
 for (j = 0; j < i; j++, rx_desc++)
  ib_dma_unmap_single(device->ib_device, rx_desc->dma_addr,
   ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
 kfree(ib_conn->rx_descs);
 ib_conn->rx_descs = ((void*)0);
rx_desc_alloc_fail:
 iser_err("failed allocating rx descriptors / data buffers\n");
 return -ENOMEM;
}
